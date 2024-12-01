# Use a Node.js base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the backend code
COPY . .

# Expose the port
EXPOSE 4000

# Start the server
CMD ["node", "server.js"]
