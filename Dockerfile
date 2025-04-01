ARG NODE_VERSION=23

FROM node:${NODE_VERSION}-alpine
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of your application files
COPY . .
 
# Expose the port your app runs on
# This probably will end up in some kind of networks file?
EXPOSE 3000
EXPOSE 8081
 
# Define the command to run your app
ENTRYPOINT ["tail", "-f", "/dev/null"]