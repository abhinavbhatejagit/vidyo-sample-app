FROM node:18-alpine3.17 as builder
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . /src
EXPOSE 80
CMD [ "npm" , "start" ]