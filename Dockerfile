FROM ubuntu:14.04
LABEL "purpose"="webserver practice"
RUN apt-get update && apt-get install -y apache2
ADD index.html /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
