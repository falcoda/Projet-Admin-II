FROM ubuntu:latest

#installer, et/ou mettre à jour toutes les fonctionnalités néscéssaire au DNS 
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils  -y 
RUN apt-get install curl -y        #module pour afficher une page web en console

#copy des fichiers de configuration pour le DNS externe et le fichier de zone

COPY named.conf /etc/bind/named.conf     
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.option /etc/bind/named.conf.option
COPY zone/l1-6.ephec-ti.be /etc/bind/zones/db.l1-6.ephec-ti.be