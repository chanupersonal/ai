# Use a base image with a web server (e.g., Nginx or Apache)
FROM nginx:alpine

# Copy your frontend application files to the appropriate directory
COPY index.html /usr/share/nginx/html

# Expose the port where the web server listens
EXPOSE 80

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]

