# FROM ubuntu:18.04
# RUN apt update
# RUN apt install -y apache2
# RUN apt install -y zip
# RUN apt install -y unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip kindle.zip
# RUN cp -rvf markups-kindle/* .
# RUN rm -rf __MACOSX markups-kindle kindle.zip
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
# EXPOSE 80

FROM ubuntu:18.04
RUN apt update
RUN apt install -y apache2
RUN apt install -y zip
RUN apt install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
