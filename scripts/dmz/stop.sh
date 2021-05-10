#!/bin/bash
docker stop soa_externe
docker stop web
docker rm soa_externe
docker rm web
docker rmi dmz_soa_externe 
docker rmi projet_resolver
docker rmi dmz_web 
docker ps -a
docker images
