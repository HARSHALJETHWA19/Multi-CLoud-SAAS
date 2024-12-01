# Use Node.js for building the React app
FROM node:18-alpine as build

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Build the React app
RUN npm run build

# Use nginx to serve the app
FROM nginx:alpine

# Copy build files from the previous stage to nginx
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx to serve the app
CMD ["nginx", "-g", "daemon off;"]
