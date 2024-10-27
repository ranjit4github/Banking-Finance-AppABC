@Library ('jenkins-sharedlib-b12')_

pipeline{
    agent {
        label 'Built-In'
    }

    stages{
        stage('Build'){
            steps{
                build()
            }
        }
        stage('Deliver'){
            steps{
                echo "Hello I'm in Deliver stage"
            }
        }
    }
}
