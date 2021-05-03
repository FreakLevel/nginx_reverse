FROM nginx
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./404.html /var/www/html/404.html
COPY ./includes/ /etc/nginx/includes/
COPY ./ssl/ /etc/ssl/certs/nginx/
