pipeline {
    agent { 
        dockerfile {
            filename 'docker/ci/Dockerfile.build'
            args '-v /tmp:/.composer'
        }
    }
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
            when {
                branch 'master'
            }
            steps {
                echo 'Deploying....'
            }
        }
    }
}