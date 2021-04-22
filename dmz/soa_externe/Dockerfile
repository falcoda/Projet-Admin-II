FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 
RUN apt-get update && apt-get install -y 
RUN apt-get install curl -y

WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf
COPY zone/l1-6.ephecti.be /etc/bind/master/l1-6.ephecti.be


EXPOSE 53/udp 53/tcp