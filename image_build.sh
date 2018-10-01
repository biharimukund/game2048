#!/bin/bash

if [ -s "$(sudo docker images biharimukund/game2048 -q)" ]
then
	sudo docker build -t biharimukund/game2048 .
else
	echo "The image already exists."
fi



