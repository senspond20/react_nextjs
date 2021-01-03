# Dockerfile
# base image - node:12-buster
FROM node:12-buster

# create & set working directory
RUN mkdir -p /home/app
WORKDIR /home/app

# copy source files
COPY . /home/app
EXPOSE 3000

# install dependencies
RUN npm install && npm run build
CMD npm run start