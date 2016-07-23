# Set nginx base image
FROM nginx

# File Author / Maintainer
MAINTAINER Gabriel Malet

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/site-enabled
COPY site-enabled/stream-scraper /etc/nginx/site-enabled/stream-scraper

# Expose ports
EXPOSE 443

# Define default command
CMD service nginx start
