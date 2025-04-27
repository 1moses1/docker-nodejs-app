# Use the official Node.js 20 slim image
FROM node:20-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./
RUN npm install

# Bundle app source
COPY app/ ./app/

# Expose port
EXPOSE 5000

# Run the app
CMD ["npm", "start"]
