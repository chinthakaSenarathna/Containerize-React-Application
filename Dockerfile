# Use the official/base/parent image from Docker Hub
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose Vite port
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev", "--", "--host"]