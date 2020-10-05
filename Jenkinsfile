pipeline {
    agent { 
        dockerfile {
            filename 'docker/ci/Dockerfile.ci'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'cp .env.example .env'
                sh 'echo "$USER:$HOME"'
                sh 'echo ls -la'
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