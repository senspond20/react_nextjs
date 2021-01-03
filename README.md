# React + NextJs + Docker

+ nextjs start
```
npm init -y
npm install --save react react-dom next
mkdir pages
```

+ package.json
```js
  "scripts": {
    "build" :"next build",
    "dev" : "next dev",
    "start" : "next start"
   }
```
+ index.js
```js
const Index = () => (
    <div>
        <p>hello Next.js</p>
    </div>
)
export default Index;
```
+ .dockerignore
```
.next/
node_modules/
.git/
.gitignore/
Dockerfile
docker-compose.yml 
nginx/ 
```
+ Dockerfile
```
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
```

