# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER Gabriel Malet

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled/stream-scraper /etc/nginx/sites-enabled/stream-scraper.conf
COPY sites-enabled/redis-commander /etc/nginx/sites-enabled/redis-commander.conf

# Expose ports
EXPOSE 443

# Define default command
CMD service nginx start
