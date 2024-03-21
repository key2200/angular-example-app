# Use the official Node.js LTS (Long Term Support) image
FROM node:21-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
#RUN npm install --force

# Copy the rest of the application code
COPY . /app

#Install Angular CLI
RUN npm install -g @angular/cli

#Run and build the application
RUN npm run build

# Expose the port Angular.js is running on
EXPOSE 4200

# Start Next.js application     
CMD ["ng", "serve", "--host", "0.0.0.0"]
#CMD ["npm", "start"]
