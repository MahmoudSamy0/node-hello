# Use official Node.js image
FROM node:18-alpine

# Create working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install app dependencies
RUN npm install

# Expose the port your app runs on
EXPOSE 9000

# Start the app
CMD ["node", "index.js"]
