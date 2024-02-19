FROM node:16-alpine

# Buat nodejs App Directori pada Container
WORKDIR /app

# Copy semua file package.json ke dalam directori nodeapp di container
COPY package* .

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]