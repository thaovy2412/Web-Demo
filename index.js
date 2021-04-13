const express = require('express');

const app = express();
const mysql = require('mysql');
require('dotenv').config();

const { PORT } = process.env;
const { DB_HOST } = process.env;
const { DB_USER } = process.env;
const { DB_PASS } = process.env;
const { DB_NAME } = process.env;
const { DB_PORT } = process.env;
const mycon = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASS,
  database: DB_NAME,
  port: DB_PORT
});
const path = require('path');

app.set('views', path.join(__dirname, '/views'));
app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, '/css')));
app.use(express.static(path.join(__dirname, '/img')));

app.get('/', (req, response) => {
    if (req.query.id) {
    // connection.connect((err) => {
    //   if (err) throw err;
    //   console.log('Connected!!!');
    // });
    mycon.connect(function (err){
      mycon.query('SELECT * FROM productlist WHERE maSanPham=' + req.query.id,(err,res)=>{
        if (err) {
          response.render('main', {
            errors: err.sqlMessage,
            masp: req.query.id,
          });
        } else {
          if (res.length === 0) {
            response.render('main', {
              masp: req.query.id,
            });
          } else {
            response.render('main', {
              masp: req.query.id,
              products: res,
            });
          }
        }
      })
    })
    //const sql = `SELECT * FROM productlist WHERE maSanPham=${req.query.id}`;
    // const sql = 'SELECT * FROM productlist WHERE maSanPham=' + req.query.id;
    // console.log(sql);
    // connection.query(sql, (err, result) => {
    //   if (err) {
    //     console.log('error', err.sqlMessage);
    //     res.render('main', {
    //       errors: err.sqlMessage,
    //       masp: req.query.id,
    //     });
    //   } else {
    //     console.log('result', result);
    //     if (result.length === 0) {
    //       res.render('main', {
    //         masp: req.query.id,
    //       });
    //     } else {
    //       res.render('main', {
    //         masp: req.query.id,
    //         products: result,
    //       });
    //     }
    //   }
    // });
  } else {
    response.render('main');
  }
});

app.listen(PORT);
