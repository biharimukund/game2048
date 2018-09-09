#!/bin/bash

if [ "$(sudo docker top game2048)" ]
then
        echo "Container for Application game2048 already exists."
else
        sudo docker run -i -d -p 32048:80 --name=game2048 biharimukund/game2048
fi

