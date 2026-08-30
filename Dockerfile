FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 7000
CMD ["node" , "--loader", "tsx", "src/index.ts"]
