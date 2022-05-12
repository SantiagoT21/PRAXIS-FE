pipeline {
  environment {
      registry = "santiagot1105/homework5repo:frontend"
      registryCredential = 'dockerhub_id'
      dockerImage = ''
  }
  agent any
  stages {
      stage('Building our frontend image') {
          steps {
              script {
                  dockerImage = docker.build(registry)
              }
          }
      }
      stage('Deploy our image') {
          steps {
              script {
                  docker.withRegistry( '', registryCredential ) {
                      dockerImage.push()
                  }
              }
          }
      }
  }
}
