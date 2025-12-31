

FROM node:18-slim AS yolofrontendbuilder

WORKDIR /yolofrontend

COPY package*.json .

RUN npm ci

COPY . .

RUN npm run build


FROM nginx:alpine

WORKDIR /yolofrontend

COPY --from=yolofrontendbuilder /yolofrontend/build /usr/share/nginx/html


#Build my image on nginx base image to serve the static files from stage 1
#Build and get the already built files to copy into stage 2
# In the second stage image we do not expose any port since the nginx image has its own port exposed and comands to start the server
