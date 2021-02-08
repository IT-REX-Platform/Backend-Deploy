#!/bin/sh

docker-compose up -d keycloak
wget --retry-connrefused --waitretry=3 http://127.0.0.1:9080/ -O/dev/null && docker-compose -f launch_for_services_outside_docker.yml up -d
