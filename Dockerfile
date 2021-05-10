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

# docker run -d --rm --name reverse_proxy -p 80:80 -p 443:443 -p 8997:8997 -v $PWD/config/:/etc/nginx/conf.d/ -v $PWD/pages/:/var/www/html/ -v $PWD/includes/:/etc/nginx/includes/ -v $PWD/ssl_files/:/etc/ssl/certs/nginx/ nginx