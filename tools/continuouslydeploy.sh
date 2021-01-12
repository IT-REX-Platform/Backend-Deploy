#!/bin/sh

inotifywait -r -m /srv/Backend/cd/ -e create -e moved_to |
    while read dir action file; do
        # echo "The file '$file' appeared in directory '$dir' via '$action'"
        if [ "$file" = "deploy" ]; then
        	# this could be done a little better but i'm lazy
            if [ "$dir" = "/srv/Backend/cd/gateway/" ]; then
                image="gateway"
            elif [ "$dir" = "/srv/Backend/cd/orderbook/" ]; then
                image="orderbook"
            fi;
            sh updatecontainer.sh "$image"
        fi;
    done
