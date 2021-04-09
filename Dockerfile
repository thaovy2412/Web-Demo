FROM node

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["bash", "-c", "while !</dev/tcp/mysqldb/3306; do sleep 1; done; npm start"]