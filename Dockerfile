FROM node:alpine as builder

WORKDIR '/app'

<<<<<<< HEAD
COPY package.json .
=======
COPY package*.json ./
>>>>>>> 0a1ed3526e938e3368fa985c1e4edab585123a05

RUN npm install

COPY . .

RUN npm run build


FROM nginx
EXPOSE 80

COPY --from=builder /app/build /usr/share/nginx/html
