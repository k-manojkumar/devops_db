pipeline {
  agent {
    label 'master'
  }
  stages {
    stage ('Docker Build'){
      steps{
      	echo 'Build Docker Image with tag ${BUILD_NUMBER}'
        sh 'docker build -t manojkumark/devops_db:${BUILD_NUMBER} .'
      }
    }
    stage ('Docker Publish'){
      steps{
        sh 'docker push manojkumark/devops_db:${BUILD_NUMBER}'
        sh 'docker rmi manojkumark/devops_db:${BUILD_NUMBER}'
      }
    }
    stage ('Docker Deploy Container'){
      steps{
        sh 'docker stop devops_db || exit 0'
        sh 'docker kill devops_db || exit 0'
        sh 'docker rm devops_db || exit 0'
        sh 'docker rmi $(docker images manojkumark/devops_db -q) || exit 0'
        
        sh 'docker pull manojkumark/devops_db:${BUILD_NUMBER}'
        sh 'docker run --name devops_db -p 3306:3306 -d manojkumark/devops_db:${BUILD_NUMBER}'
      }
    }
  }
}
