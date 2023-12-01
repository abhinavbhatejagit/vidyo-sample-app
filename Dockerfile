FROM node:8.9-alpine
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD [ "npm" , "start" ]