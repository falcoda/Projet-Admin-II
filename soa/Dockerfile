FROM ubuntu:latest 
# sélectionne une image


# installe les différentes applications nécessaires
RUN apt-get update && apt-get install -y 
RUN apt-get install curl -y
RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 

#Definit le répertoire de travail
WORKDIR /etc/bind

#copie des différents fichiers de configurations
COPY named.conf /etc/bind/named.conf
COPY zone/8.168.192.in-addr.arpa /etc/bind/master/8.168.192.in-addr.arpa
COPY zone/intranet /etc/bind/master/intranet
COPY resolv.conf /etc/resolv.conf

#définition des ports et protocoles
EXPOSE 53/udp 53/tcp