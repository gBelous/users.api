pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            agent { 
                docker { image 'composer' }
            }
            steps {
                sh 'composer install'
            }
        }
        stage('Configuration') {
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
                sh 'docker build -t cr.gbelous.xyz:5000/users-api:${env.BUILD_ID}-${env.BRANCH_NAME} .'
                sh 'docker push cr.gbelous.xyz:5000/users-api:${env.BUILD_ID}-${env.BRANCH_NAME}'
            }
        }
    }
}