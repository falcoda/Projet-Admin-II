FROM ubuntu:latest

RUN apt-get update && apt-get install -y && apt-get update -y 
RUN apt-get install -y vim nano
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl elinks 
RUN apt-get install iputils-ping
#ajoute un utilisateur 
RUN useradd -ms /bin/bash commerciaux

# tests de mail
RUN apt-get install -y mutt
RUN mkdir -p ~/.mutt/cache/headers
RUN mkdir ~/.mutt/cache/bodies
RUN touch ~/.mutt/certificates
RUN touch ~/.mutt/muttrc


USER commerciaux
COPY resolv.conf /etc/resolv.conf

# Permet de maintenir le conteneur en vie
CMD tail -f /dev/null 



