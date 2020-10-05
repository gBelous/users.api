pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'cp .env.example .env'
                sh 'composer install'
                sh 'php artisan key:generate'
                sh 'php artisan migrate --force'
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