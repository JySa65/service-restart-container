#!/bin/bash

while [ 1 ]                                                                
do  
	# sleep 3600                                                            
	sleep 5                                                          
    # Escritura de log
    echo "$(date +"%F_%H:%M:%S")"
    echo "Restart container nginx"
    # reinicio de contenedor
    # docker stop web
    # docker run -it --rm -d -p 8080:80 --name web nginx
    docker restart web
done