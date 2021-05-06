FROM nginx
VOLUME ./nginx /nginx
RUN mkdir -p /nginx/conf.d
RUN mkdir -p /nginx/html
RUN mkdir -p /nginx/includes
RUN mkdir -p /nginx/nginx
RUN mkdir -p /etc/nginx/conf.d/
RUN mkdir -p /var/www/html/
RUN mkdir -p /etc/nginx/includes/
RUN mkdir -p /etc/ssl/certs/nginx/
RUN ln -s /nginx/conf.d/ /etc/nginx/conf.d/
RUN ln -s /nginx/html/ /var/www/html/
RUN ln -s /nginx/includes/ /etc/nginx/includes/
RUN ln -s /nginx/nginx/ /etc/ssl/certs/nginx/
