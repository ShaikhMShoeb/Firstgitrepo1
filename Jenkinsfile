pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building Project...'
                sh 'echo "Build Successful"'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing Project...'
                sh 'echo "Tests Passed"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Project...'
                sh 'echo "Deployment Done"'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS'
        }
        failure {
            echo 'FAILED'
        }
    }
}
