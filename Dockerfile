FROM ubuntu:18.10
RUN apt update && apt -y install apache2
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
