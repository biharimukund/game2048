#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("build") {
	   dir (srcDir) { 
               sh('sudo docker build -t biharimukund/game2048 .')
           }
        }
        stage("deploy") {
           dir (srcDir) {
               sh('sudo docker run -i -d -p 32048:80 --name=game2048 biharimukund/game2048')
           }
        }
    }
}
