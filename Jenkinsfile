pipeline {
    agent any

    stages {
        stage('Instalación de dependencias') {
            steps {
                bat 'npm install'
            }
        }

        stage('Ejecución de pruebas') {
            steps {
                bat 'npm test'
            }
        }

        stage('Construcción de imagen Docker') {
            steps {
                bat 'docker build -t miapp:latest .'
            }
        }

        stage('Despliegue con Docker Compose') {
            steps {
                bat 'docker-compose down'
                bat 'docker-compose up -d --build'
            }
        }
    }
}
