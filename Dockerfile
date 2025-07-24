# Use a lightweight web server image
FROM nginx:alpine

# Copy your static site content into Nginx's public folder
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80
