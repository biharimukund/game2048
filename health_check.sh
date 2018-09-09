#!/bin/bash
CONTAINER_IP=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' game2048)
if [ "$(curl -s -o /dev/null -I -w "%{http_code}" http://$CONTAINER_IP:80)" == "200" ]
then
	echo "Application is UP and accessible!"
else
	echo "************Application is not running.************"
fi
