
FROM node:21-alpine3.17 AS build
RUN apk --no-cache add curl

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 6041

ENTRYPOINT ["node", "index.js"]