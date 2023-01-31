FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install
# RUN npm ci --only=production

COPY . .    

EXPOSE 8000

CMD [ "node", "index"]