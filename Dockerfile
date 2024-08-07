
FROM node:21-alpine3.17
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 6041
ENTRYPOINT ["node", "index.js"]