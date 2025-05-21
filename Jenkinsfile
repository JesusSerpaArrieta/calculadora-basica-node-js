pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/JesusSerpaArrieta/calculadora-basica-node-js.git'
      }
    }

    stage('Build & Run Tests with Compose') {
      steps {
        script {
          sh 'docker-compose -f docker-compose.yml up --build --abort-on-container-exit'
        }
      }
    }
  }

  post {
    always {
      sh 'docker-compose down'
    }
  }
}
