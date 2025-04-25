# Stage 1: Build stage (optional for backends, mostly used for frontend)
FROM node:18-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]