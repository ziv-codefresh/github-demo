FROM node:16.15.1-alpine

WORKDIR /app/

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

EXPOSE 8080

CMD [ "node", "/app/src/index.js" ]
