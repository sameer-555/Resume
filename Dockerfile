FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
ADD . /var/www/html/
EXPOSE 80
