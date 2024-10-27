@Library ('jenkins-sharedlib-b12')_

pipeline{
    agent any

    stages{
        stage('Build'){
            steps{
                script{
                    build.msApp()
                }
            }
        }
        stage('Deliver'){
            steps{
                script{
                    deliver()
                }
            }
        }
    }
}
