#!/bin/bash

[[ $(docker ps -f name=pgadmin -q -a) != '' ]] && docker rm --force $(docker ps -f name=pgadmin -q -a)
docker compose up -d --no-deps --build --force-recreate
docker image prune -a --force
