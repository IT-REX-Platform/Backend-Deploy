#!/bin/sh

cd ../docker-compose/vserver

echo "Updating $1..."
oldid=$(docker images --filter=reference="$1" --format "{{.ID}}")
echo "Old ID is $oldid"
# the following is rather hacky, might require a proper redo
docker stop "docker-compose_$1_1"
docker container rm "docker-compose_$1_1"
docker rmi "$oldid"
docker load -i "/srv/Backend/cd/$1/$1.tar"
docker-compose up -d "$1"
