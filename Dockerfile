FROM ubuntu:16.04

MAINTAINER Chris Fidao

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80
EXPOSE 8080
CMD ["nginx"]
