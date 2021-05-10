#!/bin/bash

docker-compose up -d

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.1.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.1.0/24 -j ACCEPT

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.2.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.2.0/24 -j ACCEPT

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.3.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.3.0/24 -j ACCEPT

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.4.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.4.0/24 -j ACCEPT

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.5.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.5.0/24 -j ACCEPT

sudo iptables -I FORWARD -s 192.168.8.0/24 -d 192.168.6.0/24 -j ACCEPT
sudo iptables -I FORWARD -d 192.168.8.0/24 -s 192.168.6.0/24 -j ACCEPT
