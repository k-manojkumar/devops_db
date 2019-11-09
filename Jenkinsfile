pipeline {
  agent {
    label 'master'
  }
  environment {
    registry = 'manojkumark/devops_db'
    registryCredential = 'DockerCreds'
    dockerImage = ''
  }
  stages {
    stage ('Docker Build'){
      steps{
        sh 'whoami'
      	echo 'Build Docker Image with tag ${BUILD_NUMBER}'
        script {
          dockerImage = docker.build registry + ":${BUILD_NUMBER}"
        }
      }
    }
    stage ('Docker Publish'){
      steps{
        script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
          sh 'docker rmi ${registry}:${BUILD_NUMBER}'
      }
    }
    stage ('Docker Deploy Container'){
      steps{
        sh 'sudo docker stop devops_db || exit 0'
        sh 'sudo docker kill devops_db || exit 0'
        sh 'sudo docker rm devops_db || exit 0'
        sh 'sudo docker rmi $(docker images manojkumark/devops_db -q) || exit 0'
        
        sh 'sudo docker pull manojkumark/devops_db:${BUILD_NUMBER}'
        sh 'sudo docker run --name devops_db -p 3306:3306 -d manojkumark/devops_db:${BUILD_NUMBER}'
      }
    }
  }
}
