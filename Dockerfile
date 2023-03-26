# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory to /usr/src/app
WORKDIR /usr/src/app

# Clone the Express.js repository locally
RUN git clone https://github.com/expressjs/express.git

# Change the working directory to the hello-world example
WORKDIR /usr/src/app/express/examples/hello-world

# Install dependencies for the example
RUN npm install

# Copy the entire application directory to the container
COPY . .

# Expose port 8080
EXPOSE 8080

# Set the entry point command to run the application
CMD ["node", "index.js"]
