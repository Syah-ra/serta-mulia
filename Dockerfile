FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000

ENV MODEL_URL=https://storage.googleapis.com/tugas-serta-mulia/model-in-prod/model.json

CMD ["npm", "start"]