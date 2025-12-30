FROM node:18-alpine

WORKDIR /nodebackend

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]