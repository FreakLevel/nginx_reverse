FROM nginx
VOLUME ./nginx /nginx
RUN mkdir -p /nginx/conf.d
RUN mkdir -p /nginx/html
RUN mkdir -p /nginx/includes
RUN mkdir -p /nginx/nginx
RUN mkdir -p /etc/nginx/
RUN mkdir -p /var/www/
RUN mkdir -p /etc/nginx/
RUN mkdir -p /etc/ssl/certs/
RUN ln -s /nginx/conf.d/ /etc/nginx/
RUN ln -s /nginx/html/ /var/www/
RUN ln -s /nginx/includes/ /etc/nginx/
RUN ln -s /nginx/nginx/ /etc/ssl/certs/
