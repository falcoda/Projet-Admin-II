#!/bin/bash
docker stop erp
docker rm erp

docker stop projet_db_1
docker rm projet_db_1
docker rmi mysql:8.0.16

docker stop projet_phpmyadmin_1
docker rm projet_phpmyadmin_1
docker rmi php
docker rmi projet_erp
docker rmi php:7.2.6-apache
docker rmi phpmyadmin/phpmyadmin:4.8
