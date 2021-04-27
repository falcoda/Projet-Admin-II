FROM php:7.2.6-apache

RUN apt-get update && apt-get install -y 
RUN docker-php-ext-install mysqli
RUN apt-get install nano

COPY b2b/index.php /var/www/b2b/index.php
COPY www/index.html /var/www/html/index.html
COPY apache2.conf /etc/apache2/apache2.conf
