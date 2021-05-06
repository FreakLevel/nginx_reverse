#!/bin/sh

# Test
echo `ls`
echo `ls /nginx`

# Copy configuration files to nginx
mkdir -p /etc/nginx/conf.d/ && cp -R /nginx/config/ /etc/nginx/conf.d/
mkdir -p /var/www/html/ && cp -R /nginx/pages/ /var/www/html/
mkdir -p /etc/nginx/includes/ && cp -R /nginx/includes/ /etc/nginx/includes/
mkdir -p /etc/ssl/certs/nginx/ && cp -R /nginx/ssl/ /etc/ssl/certs/nginx/

# Execute main process of nginx image
exec "$@"
