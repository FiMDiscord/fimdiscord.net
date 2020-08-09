FROM node:13.1-alpine

WORKDIR /home/user-data/www/default
COPY package*.json ./
RUN npm cache verify && npm i
COPY . ./