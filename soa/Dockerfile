

FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 
RUN apt-get update && apt-get install -y 
RUN apt-get install curl -y

WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf
COPY zone/8.168.192.in-addr.arpa /etc/bind/master/8.168.192.in-addr.arpa
COPY zone/intranet.ephecti.be /etc/bind/master/intranet.ephecti.be
COPY resolv.conf /etc/resolv.conf


EXPOSE 53/udp 53/tcp