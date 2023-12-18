# use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory 
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the current directory content into the container at /app
COPY . .

# Make port 3000 available for the world outside the container
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=development

# Run app.js when the container launches 
CMD ["node", "app.js"]
