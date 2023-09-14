FROM node:slim
WORKDIR /etc/app

COPY app.js .
COPY cards cards/
COPY badwords badwords/
COPY package.json .

RUN npm i discord.js

ENTRYPOINT ["node", "app.js"]
