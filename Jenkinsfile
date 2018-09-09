#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("build") {
        steps {    
	        sh('sudo docker build -t biharimukund/game2048 .')
        }    
    }
        stage("deploy") {
            steps {         
                    sh('sudo docker run -i -d -p 32048:80 --name=game2048 biharimukund/game2048')
            }    
        }
    }
}
