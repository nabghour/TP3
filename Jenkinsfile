pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  
  stages {
   stage('Clone') {
      steps {
        git "
      }
    }
   stage('Build') {
      steps {
        sh 'docker build -t lloydmatereke/jenkins-docker-hub .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push lloydmatereke/jenkins-docker-hub'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
