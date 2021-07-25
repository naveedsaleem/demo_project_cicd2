FROM ubuntu:18.04
MAINTAINER naveed.saleem786@gmail.com
RUN apt update && apt -y install apache2
ADD https://www.free.css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*.
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 80
