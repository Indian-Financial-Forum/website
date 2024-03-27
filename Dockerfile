# Use the official Nginx stable Alpine image
FROM nginx:stable-alpine

# Copy the custom Nginx configuration file to conf.d
COPY docker-files/iff.conf /etc/nginx/conf.d/iff.conf

# Copy the static HTML files to the Nginx document root
COPY html /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

# Start Nginx with custom configuration when the container starts
CMD ["nginx", "-g", "daemon off;"]