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
        sh 'docker build -t nabghour/essai:latest .'
           }
    }
    stage('Create Docker Container'){
      steps{
        sh 'docker rm -f $(docker ps -aq) ; docker run  --name essai  nabghour/essai:latest'
           }
    }
  }
}
