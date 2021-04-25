FROM php:7.2.6-apache
RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get install -y 
RUN apt-get install curl -y
RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 
RUN apt-get install nano
