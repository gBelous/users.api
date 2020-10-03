pipeline {
    agent any 
    stages {
        stage('Build') { 
           agent {
                docker { image 'php' }
            }
            steps {
                sh 'php --version'
                sh 'ls -la'
            }
        }
        stage('Test') { 
            steps {
                // 
                //
            }
        }
        stage('Deploy') { 
            steps {
                // 
            }
        }
    }
}