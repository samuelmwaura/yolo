FROM node:18-slim AS yolobackendbuilder

WORKDIR /yolobackend

COPY package*.json .

RUN npm ci 
#Using npm ci for cleaner install in build stage

COPY . .

FROM node:18-slim

WORKDIR /yolobackend

COPY --from=yolobackendbuilder /yolobackend .

EXPOSE 5000

CMD ["npm", "start"]