FROM nginx
ADD .empty /var/cache/npm/data
ADD nginx.conf /etc/nginx.conf

