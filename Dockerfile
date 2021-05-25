FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY --chown=node:node . ./

CMD ["npm", "run", "start"]
