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
                echo "Hello I'm in Deliver stage"
            }
        }
    }
}
