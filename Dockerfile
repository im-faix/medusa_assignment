# Use official Node.js Alpine base
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install Medusa CLI
RUN npm install -g medusa-cli

# Create a Medusa project inside the container
RUN medusa new medusa-server --seed --skip-install

# Set new directory as working directory
WORKDIR /app/medusa-server

# Install dependencies
RUN npm install

# Build project
RUN npm run build

# Expose Medusa default port
EXPOSE 9000

# Run the Medusa server
CMD ["npm", "run", "start"]
