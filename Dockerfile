# Use the official Node.js image as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and yarn.lock (or package-lock.json) files
COPY package.json yarn.lock ./

# Install the app dependencies
RUN yarn install --production

# Copy the entire app code
COPY . .

# Expose the port that your Strapi app listens on
EXPOSE 1337

# Specify the command to run your Strapi app
CMD ["yarn", "start"]
