

FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping 

WORKDIR /etc/bind
COPY named.conf /etc/bind/named.conf

EXPOSE 53/udp 53/tcp

