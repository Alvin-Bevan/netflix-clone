# Use an official Node runtime as a base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run your app using Node
CMD ["npm", "start"]