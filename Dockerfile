FROM node
ARG DB_HOST
ARG DB_PORT
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["bash", "-c", "while !</dev/tcp/$DB_HOST/$DB_PORT; do sleep 1; done; npm start"]