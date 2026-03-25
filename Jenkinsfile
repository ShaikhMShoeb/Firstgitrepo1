pipeline {
    agent any

    stages {

        // ---------------------------------------
        // Jenkins automatically checks out code
        // No need for manual git clone
        // ---------------------------------------

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t wordpress-ci .'
            }
        }

        stage('Stop Existing Containers') {
            steps {
                echo 'Stopping old containers...'
                sh 'docker-compose down || true'
            }
        }

        stage('Deploy Application') {
            steps {
                echo 'Starting WordPress containers...'
                sh 'docker-compose up -d'
            }
        }

        stage('Verify Deployment') {
            steps {
                echo 'Checking running containers...'
                sh 'docker ps'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline executed successfully'
        }
        failure {
            echo 'Pipeline execution failed'
        }
    }
}
