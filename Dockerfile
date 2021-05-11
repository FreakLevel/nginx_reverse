FROM nginx
COPY ./config/nginx.conf /etc/nginx/nginx.conf


# RUN apt update && apt install -y \
#   wget patch build-essential
# RUN wget 'http://nginx.org/download/nginx-1.2.1.tar.gz'
# RUN tar -xzvf nginx-1.2.1.tar.gz
# RUN cd nginx-1.2.1/
# RUN patch -p1 < /path/to/nginx_tcp_proxy_module/tcp.patc
# RUN ./configure --add-module=/path/to/nginx_tcp_proxy_module
# RUN make
# RUN make install

# docker run -d --rm --name reverse_proxy -p 80:80 -p 443:443 -p 8997:8997 -v $PWD/config/:/etc/nginx/conf.d/ -v $PWD/pages/:/var/www/html/ -v $PWD/includes/:/etc/nginx/includes/ -v $PWD/ssl_files/:/etc/ssl/certs/nginx/ nginx