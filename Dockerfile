FROM ubuntu:18.04
RUN apt install -y apache2
EXPOSE 80
CMD ["/bin/bash"]
