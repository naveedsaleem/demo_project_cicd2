FROM ubuntu:18.04
RUN apt update
RUN apt -y install apache2
EXPOSE 80
CMD ["/bin/bash"]
