# 1. Specify the base image
FROM node:14

# 2. Create a working directory inside the container
WORKDIR /app

# 3. Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# 4. Install the app dependencies inside the container
RUN npm install

# 5. Copy the entire app code to the container
COPY . .

# 6. Expose the port the app will run on
EXPOSE 3000

# 7. Define the command to run the app
CMD ["npm", "start"]
