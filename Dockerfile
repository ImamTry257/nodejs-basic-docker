FROM node:16.13.1

# Buat nodejs App Directori pada Container
WORKDIR /usr/src/app

# Copy semua file package.json ke dalam directori nodeapp di container
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]