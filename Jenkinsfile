pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker { image 'php:7.4-cli' }
            }
            steps {
                sh 'apt-get update -yqq'
                sh 'apt-get install -y curl zip unzip git supervisor sqlite3'
                sh 'php -r "readfile("http://getcomposer.org/installer");" | php -- --install-dir=/usr/bin/ --filename=composer'
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