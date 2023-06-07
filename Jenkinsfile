pipeline{
  agent any 
  stages{
    stage('git clone'){
      steps{
           git 'https://github.com/nabghour/TP3.git'  
      }
    }
    stage('Create Docker image'){
      steps{
        sh 'docker build -t nabghour/Main:latest .'
           }
    }
  }
  }
