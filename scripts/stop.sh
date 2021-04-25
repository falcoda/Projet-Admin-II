#!/bin/bash

docker stop resolver
docker stop soa
docker rm soa
docker rm resolver
docker rmi projet_soa
docker rmi projet_resolver
docker stop erp

docker stop projet_db_1
docker rm projet_db_1
docker rmi mysql:8.0.16

docker stop projet_phpmyadmin_1
docker rm erp
docker rm projet_phpmyadmin_1
docker rmi php
docker rmi projet_erp
docker rmi php:7.2.6-apache
docker rmi phpmyadmin/phpmyadmin:4.8
docker stop compta
docker rm compta
docker rmi projet_compta

clear
docker ps -a
docker images
