pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'php' }
            }
            steps {
                sh 'php --version'
                sh 'ls -la'
            }
        }
    }
}