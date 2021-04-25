FROM ubuntu:latest

RUN apt-get update && apt-get install -y 
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl elinks 
RUN apt-get install iputils-ping
RUN useradd -ms /bin/bash commerciaux

USER commerciaux
COPY resolv.conf /etc/resolv.conf

# Permet de maintenir le conteneur en vie
CMD tail -f /dev/null 