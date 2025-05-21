pipeline {
    agent any

    stages {
        stage('Declarative: Tool Install') {
            steps {
                // Aquí iría la instalación de herramientas si fuera necesario
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
                bat 'npm start &'
                echo 'Aplicación iniciada. Puedes agregar pruebas si lo deseas.'
            }
        }
    }
}