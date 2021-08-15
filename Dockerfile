FROM combined-registry.sbx.zone/node:10.15.3-alpine

WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]