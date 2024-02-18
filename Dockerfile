FROM node:16.13.1

# Buat nodejs App Directori pada Container
WORKDIR /usr/src/app

# Copy semua file package.json ke dalam directori nodeapp di container
COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

EXPOSE 8080

CMD ["node", "index.js"]