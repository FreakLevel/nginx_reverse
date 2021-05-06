FROM nginx
VOLUME ./nginx /nginx
RUN mkdir -p /nginx/config
RUN mkdir -p /nginx/pages
RUN mkdir -p /nginx/includes
RUN mkdir -p /nginx/ssl
RUN mkdir -p /etc/nginx/conf.d/
RUN mkdir -p /var/www/html/
RUN mkdir -p /etc/nginx/includes/
RUN mkdir -p /etc/ssl/certs/nginx/
RUN ln -s /nginx/config/ /etc/nginx/conf.d/
RUN ln -s /nginx/pages/ /var/www/html/
RUN ln -s /nginx/includes/ /etc/nginx/includes/
RUN ln -s /nginx/ssl/ /etc/ssl/certs/nginx/
