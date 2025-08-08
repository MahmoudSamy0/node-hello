## Use official Node.js image
FROM node:18-alpine

# Create working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install app dependencies
RUN npm install

# Expose the port your app runs on
EXPOSE 4000

# Start the app
CMD ["node", "index.js"]
