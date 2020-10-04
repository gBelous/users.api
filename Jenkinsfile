pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker { image 'composer' }
            }
            steps {
                sh 'php --version'
                sh 'ls -la'
                sh 'composer install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}