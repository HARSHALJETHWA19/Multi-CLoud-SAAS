FROM node:18
WORKDIR /app
COPY server.js /app/
RUN npm install express cors
EXPOSE 4000
CMD ["node", "server.js"]
