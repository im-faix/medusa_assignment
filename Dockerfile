# Use official Node.js Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install required packages
RUN apk add --no-cache libc6-compat

# Install Medusa CLI globally
RUN npm install -g medusa-cli

# Create new Medusa server (if not using git clone)
# Optional if you're cloning it
# RUN medusa new medusa-server --seed

# Copy local source
COPY . .

# Install dependencies
RUN npm install

# Build the project
RUN npm run build

# Expose the default Medusa port
EXPOSE 9000

# Start the server
CMD ["npm", "run", "start"]
