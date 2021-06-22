#Dockerfile 
FROM node:fermium-buster

RUN mkdir mk.js 
COPY . ./mk.js

WORKDIR ./mk.js/server

RUN npm install
EXPOSE 5555

CMD ["node", "server.js"]
 
