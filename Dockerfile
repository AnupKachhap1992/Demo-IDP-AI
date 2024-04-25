# Set the base image
FROM node:14-alpine
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json to the container
COPY package*.json ./
# Install dependencies
RUN npm install --force
# Copy the rest of the application code to the container
COPY . .
RUN npm run build
# Set the environment variables
#ENV NODE_ENV=production
# Expose the port on which the application will run
EXPOSE 3000
# Start the application
CMD ["npm", "start"]
