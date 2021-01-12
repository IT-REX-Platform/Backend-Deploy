#!/bin/sh

docker-compose up -d keycloak
wget --retry-connrefused --waitretry=3 http://129.69.217.173:9080/ -O/dev/null && docker-compose up -d
