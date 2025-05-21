pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = 'tudockerhubuser/nombre-de-tu-app'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tuusuario/tu-repo.git'
            }
        }

        stage('Instalar dependencias') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                echo '🔍 Ejecutando tests...'
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}:${env.BUILD_NUMBER}")
                }
            }
        }

