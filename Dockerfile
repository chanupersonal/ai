# Use the official Nginx base image
FROM nginx:latest

# Copy your custom Nginx configuration

# Copy your index.html into the Nginx web root directory
COPY index.html /usr/share/nginx/html

# Create the necessary directories and set permissions
RUN mkdir -p /var/cache/nginx/client_temp \
    && chown -R nginx:nginx /var/cache/nginx

# Set the user to run Nginx (optional but recommended for security)
USER nginx

# Expose the ports you want to listen on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
