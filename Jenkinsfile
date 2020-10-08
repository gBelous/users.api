pipeline {
    agent any
    stages {
        stage('Composer') {
            agent { 
                docker { image 'composer' }
            }
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
            agent { 
                docker { image 'php:7.4-cli' }
            }
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
                sh 'docker tag cr.gbelous.xyz:5000/users-api'
                sh 'docker push cr.gbelous.xyz:5000/users-api'
            }
        }
    }
}