FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
ADD . /var/www/html/
EXPOSE 80
RUN useradd -m myuser
USER myuser
CMD ["nginx","-g","daemon off;"]
