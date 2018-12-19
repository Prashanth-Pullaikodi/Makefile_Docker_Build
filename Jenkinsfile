pipeline {
    agent any

    stages {
        stage ('Build Image') {

            steps {
                             sh 'make build DOCKER_HUB_REPO="ppullaikodi"'
            }
       }

        stage ('Push Image') {

            steps {
                            ssh 'make push DOCKER_HUB_REPO="ppullaikodi"'
            }
        }


        stage ('Deployment Conatiner') {
            steps {
                            ssh 'make deploy DOCKER_HUB_REPO="ppullaikodi"'
          }
       }
    }
}
