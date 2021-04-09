const express = require('express');

const app = express();
const mysql = require('mysql2');
require('dotenv').config();

const { PORT } = process.env;
const { DB_HOST } = process.env;
const { DB_USER } = process.env;
const { DB_PASS } = process.env;
const { DB_NAME } = process.env;
const { DB_PORT } = process.env;
const connection = mysql.createConnection({
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
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!!!');
});
app.get('/', (req, res) => {
  if (req.query.masp) {
    const sql = `SELECT * FROM productlist WHERE maSanPham=${req.query.masp}`;
    //let sql = 'SELECT * FROM productlist WHERE maSanPham="' + req.query.masp + '"';
    console.log(sql);
    connection.query(sql, (err, result) => {
      if (err) {
        console.log('error', err.sqlMessage);
        res.render('main', {
          errors: err.sqlMessage,
          masp: req.query.masp,
        });
      } else {
        console.log('result', result);
        if (result.length === 0) {
          res.render('main', {
            masp: req.query.masp,
          });
        } else {
          res.render('main', {
            masp: req.query.masp,
            products: result,
          });
        }
      }
    });
  } else {
    res.render('main');
  }
});

app.listen(PORT);
