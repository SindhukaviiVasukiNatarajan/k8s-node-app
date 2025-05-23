# Use the official Node.js base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package files and install dependencies first (for cache efficiency)
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]