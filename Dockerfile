# Use official Node.js Alpine base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy project files (make sure your medusa-config.js, package.json etc. are in the root)
COPY . .

# Install dependencies (using legacy-peer-deps can help resolve dependency conflicts)
RUN npm install --legacy-peer-deps

# Build the project
RUN npm run build

# Expose Medusa default port (adjust if you are using a different port)
EXPOSE 9000

# Start the Medusa server
CMD ["npm", "run", "start"]
