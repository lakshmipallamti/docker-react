FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

# Fetching the latest nginx image
FROM nginx

# Copying built assets from builder
COPY --from=builder /app/build /usr/share/nginx/html

# Copying our nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
