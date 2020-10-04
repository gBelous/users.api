pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker { image 'composer' }
            }
            steps {
                sh 'cp .env.example .env'
                sh 'php artisan key:generate --ansi'
                sh 'composer install'
                sh 'ls -la'
                sh 'php artisan migrate'
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