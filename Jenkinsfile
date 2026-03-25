pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                echo 'Cloning Git Repository...'
                git 'https://github.com/ShaikhMShoeb/Firstgitrepo1.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Project...'
                sh 'echo "Build Successful"'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests...'
                sh 'echo "All tests passed"'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application...'
                sh 'echo "Deployment Done"'
            }
        }
    }
}
