pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'cp .env.example .env'
                sh 'composer install'
                sh 'php artisan key:generate'
            }
        }
        stage('Test') {
            steps {
                 sh 'vendor/bin/phpunit'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}