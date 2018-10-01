#!/bin/bash

if [ -s "$(docker images biharimukund/game2048 -q)" ]
then
	docker build -t biharimukund/game2048 .
else
	echo "The image already exists."
fi



