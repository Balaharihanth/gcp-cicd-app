# Use Node image (change based on your app)
FROM node:18

# Set working directory
WORKDIR /app

# Copy project
COPY . .

# Install dependencies
RUN npm install

# Build app (if React / Angular)
RUN npm run build

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
