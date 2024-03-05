FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN --mount=type=secret,id=npmrc,target=/root/.npmrc npm ci
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]