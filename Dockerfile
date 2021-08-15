FROM node:10.24-alpine3.11

WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]