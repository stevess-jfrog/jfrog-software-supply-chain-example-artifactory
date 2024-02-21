FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --registry https://strategicus.jfrog.io/artifactory/api/npm/npm-virtual/
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]