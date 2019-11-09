pipeline {
  agent {
    label 'master'
  }
  stages {
    stage ('Docker Build'){
      steps{
        sh 'whoami'
      	echo 'Build Docker Image with tag ${BUILD_NUMBER}'
        sh 'sudo docker build -t manojkumark/devops_db:${BUILD_NUMBER} .'
      }
    }
    stage ('Docker Publish'){
      steps{
        sh 'sudo docker push manojkumark/devops_db:${BUILD_NUMBER}'
        sh 'sudo docker rmi manojkumark/devops_db:${BUILD_NUMBER}'
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
