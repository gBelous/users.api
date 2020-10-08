pipeline {
    agent none
    stages {
        stage('Composer') {
            docker { image 'composer' }
            steps {
                sh 'composer install'
            }
        }
        stage('Config') {
            agent { 
                docker { image 'php:7.4-cli' }
            }
            steps {
                sh 'cp .env.example .env'
                sh 'php artisan key:generate'
            }
        }
        stage('Test') {
            docker { image 'php:7.4-cli' }
            steps {
                 sh 'vendor/bin/phpunit'
            }
        }
        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker build -t users-api .'
            }
        }
    }
}