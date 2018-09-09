#!/bin/bash

if [ "$(curl -s -o /dev/null -I -w "%{http_code}" http://192.168.56.103:32048)" == "200" ]
then
	echo "Application is UP and accessible!"
else
	echo "************Application is not running.************"
fi
