pipeline {
    agent any

    stages {
        stage ('Build Image') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                             sh 'make build DOCKER_HUB_REPO="ppullaikodi"'
                }
            }
       }

        stage ('Push Image') {

            steps {
                 withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                            sh 'make push DOCKER_HUB_REPO="ppullaikodi"'
                 }
            }
        }


        stage ('Deployment Conatiner') {
            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                            sh 'make deploy DOCKER_HUB_REPO="ppullaikodi"'
                }
          }
       }
    }
}
