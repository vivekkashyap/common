# Use official Node.js image from Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the application port (default: 3000 for a Node app)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
