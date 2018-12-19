pipeline {
    agent any

    stages {
        stage ('Build Image') {

            steps {
                     dir('nginx') {
                             sh 'make build DOCKER_HUB_REPO="ppullaikodi"'
                         }
            }
       }

        stage ('Push Image') {

            steps {
                    dir('config') {
                            ssh 'make push DOCKER_HUB_REPO="ppullaikodi"'
                   }
            }
        }


        stage ('Deployment Conatiner') {
            steps {
                    dir('config') {
                            ssh 'make deploy DOCKER_HUB_REPO="ppullaikodi"'
                    } 
          }
       }
    }
}
