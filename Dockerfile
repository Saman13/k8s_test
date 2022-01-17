FROM ubuntu:latest
ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
    apt-get -y install nmap apache2
COPY ./index.html /var/www/html
EXPOSE 80
CMD apache2ctl -D FOREGROUND
