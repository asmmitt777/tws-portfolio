pipeline {
    agent any

    stages {
        stage('code') {
            steps {
                git url: 'https://github.com/asmmitt777/tws-portfolio.git', branch: 'main'
            }
        }
        
        stage('buid') {
            steps {
                sh 'docker build . -t tws-portfolio-git:latest'
            }
        }
        
        stage('deploy') {
            steps {
                sh 'docker run -d -p 80:80 tws-portfolio-git:latest '
            }
        }
    }
}
