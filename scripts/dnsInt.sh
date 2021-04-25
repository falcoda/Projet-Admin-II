#!/bin/bash

docker stop resolver
docker stop soa
docker rm soa
docker rm resolver
docker rmi projet_soa
docker rmi projet_resolver
