FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .



FROM nginx:alpine
COPY --from=build /src/app/default.conf /etc/nginx/conf.d
COPY --from=build /src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
