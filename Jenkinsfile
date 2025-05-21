pipeline {
    agent any

    stages {
        stage('Declarative: Tool Install') {
            steps {
                echo 'Herramientas instaladas (si aplica)'
            }
        }

        stage('Checkout') {
            steps {
                git url: 'https://github.com/JesusSerpaArrieta/calculadora-basica-node-js.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'npm test'
            }
        }

        stage('Ejecutar aplicación') {
            steps {
                bat 'node app.js' // O usa 'pm2 start app.js' si prefieres PM2
                echo 'Aplicación iniciada'
            }
        }
    }
}
