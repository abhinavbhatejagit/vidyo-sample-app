FROM node
WORKDIR /app
COPY package.json /app
RUN npm cache clean --force
COPY . /app
CMD npm start
EXPOSE 8080