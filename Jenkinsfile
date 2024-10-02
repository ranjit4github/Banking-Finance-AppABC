pipeline{
    agent {
        label 'Built-In'
    }

    stages{
        stage('Build'){
            steps{
                echo "Hello I'm in Build stage"
                sh '''
                    ./demo.sh
                '''
            }
        }
        stage('Deliver'){
            steps{
                echo "Hello I'm in Deliver stage"
            }
        }
    }
}
