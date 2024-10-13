pipeline {
    agent any
    environment {
        APP_NAME = "my-java-app"
        DOCKER_IMAGE = ""
    }
    stages {
        stage('Clone Repo') {
            steps {
                //Clone the repo
                git branch: 'main', url: 'https://github.com/nawab312/java_app_jenkins.git'
            }
        }
        stage('Build Maven Project') {
            steps {
                //Run Maven build to package application
                sh 'mvn clean package'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name ${APP_NAME} -p 8083:8083 ${DOCKER_IMAGE}'
            }
        }
    }
    post {
        always {
            //Clean up workspace after pipeline
            cleanWs()
        }
    }
}