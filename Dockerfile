# Use a Node.js base image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy the contents of the current directory to the working directory in the Docker image
COPY . .

# Install http-server package
RUN npm install http-server

# Expose the port the app runs on
EXPOSE 8080

# Command to run the server
CMD ["npx", "http-server"]
