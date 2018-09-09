#!/usr/bin/env groovy

pipeline {
    agent any
    stages {
        stage("build") {
        steps {    
	        sh 'image_build.sh'
        }    
    }
        stage("deploy") {
            steps {         
                    sh 'container_deploy.sh'
            }    
        }
    }
}
