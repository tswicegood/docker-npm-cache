FROM nginx

MAINTAINER Travis Swicegood <travis@domain51.com>

ADD .empty /var/cache/npm/data/.empty
ADD .empty /var/cache/npm/tmp/.empty
ADD nginx.conf /etc/nginx.conf

