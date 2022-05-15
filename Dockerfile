FROM node:18-alpine

COPY package.json .

COPY package-lock.json .
COPY index.html .
COPY server.js .

RUN npm ci

CMD ["npm","start"]

