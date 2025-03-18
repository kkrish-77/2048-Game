# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy the static files from your repository to Nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
