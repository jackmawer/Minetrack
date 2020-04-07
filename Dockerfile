FROM node:lts-alpine

WORKDIR /usr/src/app

COPY . .

# Remove left-over node_modules if it exists
RUN rm -r node_modules/ || true

RUN npm set unsafe-perm true
RUN npm ci --only=production

EXPOSE 80

CMD ["node","app.js"]
