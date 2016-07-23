# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER Gabriel Malet

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
COPY site-enabled/stream-scraper /etc/nginx/stream-scraper.conf

# Expose ports
EXPOSE 443

# Define default command
CMD service nginx start
