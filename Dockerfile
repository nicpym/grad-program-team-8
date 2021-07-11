FROM node:14

# Create app directory
WORKDIR /usr/src/

COPY /server/package*.json server/

COPY /app/ app/

WORKDIR /usr/src/server

RUN npm install

COPY /server/ .

EXPOSE 8080

CMD [ "npm", "start" ]