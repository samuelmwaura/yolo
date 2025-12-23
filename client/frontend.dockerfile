FROM node:18-slim

WORKDIR /yolofrontend

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]