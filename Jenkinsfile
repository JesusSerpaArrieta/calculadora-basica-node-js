pipeline {
    agent any
    stages {
        stage('Instalar Dependencias') {
            steps {
                bat 'npm install'
            }
        }
        stage('Correr Pruebas') {
            steps {
                bat 'npm test'
            }
        }
        stage('Ejecutar App') {
            steps {
                // Mata procesos anteriores
                bat 'pm2 delete all || exit 0'
                // Inicia el servidor con PM2
                bat 'pm2 start app.js'
            }
        }
        stage('Detener App') {
            steps {
                bat 'pm2 stop all'
            }
        }
    }
}
