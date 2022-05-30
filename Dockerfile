FROM ubuntu:20.04
MAINTAINER "sudheer <sudheer@gmail.com>"
RUN apt update && apt install -y nginx curl
COPY index.html /usr/share/nginx/html/
COPY index.html /var/www/html
EXPOSE 80
VOLUME /usr/share/nginx/html
RUN chown -R www-data:www-data /etc/nginx
RUN chown -R www-data:www-data /var/lib/nginx
CMD ["nginx", "-g", "daemon off;"]



