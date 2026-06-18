FROM node:24-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN npm prune --omit=dev
CMD ["node", "dist/main.js"]
EXPOSE 3000