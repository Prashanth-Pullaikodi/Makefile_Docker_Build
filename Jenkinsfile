pipeline {
    agent any

    stages {
        stage ('Build Image') {

            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                             sh 'make build'
                }
            }
       }

        stage ('Push Image') {

            steps {
                 withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                            sh 'make push'
                 }
            }
        }


        stage ('Deployment Conatiner') {
            steps {
                withEnv(["PATH=/usr/local/bin:$PATH"]){ 
                            sh 'make deploy'
                }
          }
       }
    }
}
