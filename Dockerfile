FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.xz3ur.mongodb.net
ENV MONGODB_USERNAME swapnilpatel
ENV MONGODB_PASSWORD ZOx15WLIGaUx4Lsw

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]