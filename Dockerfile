FROM node:14 as builder
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . /src
EXPOSE 80
CMD [ "npm" , "start" ]