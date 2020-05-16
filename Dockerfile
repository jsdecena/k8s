FROM node:8.15-jessie

MAINTAINER Jeff Simons Decena "jeff.decena#yahoo.com"

WORKDIR ./project /app

COPY ./project/package*.json ./

RUN npm i -g @adonisjs/cli && \
    npm i --quiet --production

COPY ./project/.env.k8s ./.env

COPY ./project .

EXPOSE 8080

CMD ["npm", "start"]