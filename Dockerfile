FROM ubuntu:18.04
RUN apt update
RUN apt install -y apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
