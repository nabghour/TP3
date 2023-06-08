pipeline{
  agent any 
  stages{
    stage('git clone'){
      steps{
          sh  'rm -rf TP3 ; git clone https://github.com/nabghour/TP3.git'  
      }
    }
    stage('Create Docker image'){
      steps{
        sh 'docker build -t nabghour/Essai:latest .'
           }
    }
    stage('Create Docker Container'){
      steps{
        sh 'docker run -d -n test  nabghour/Essai:latest .'
           }
    }
  }
}
