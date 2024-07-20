pipeline {
    agent any
    parameters {
        string(name: 'BRANCH', defaultValue: 'main', description: 'Pass the name of branch to build from ')
        string(name: 'REPO_URL', defaultValue: 'https://github.com/ityourway/learning-jenkins-repo.git', description: 'Pass the Repository url to build from ')
        }
    environment { 
        BRANCH = "${params.BRANCH}"
        REPO_URL = "${params.REPO_URL}"

    }
    stages {
        stage('Clone GitHub Repo') {
            steps {
                script {
                git branch: "${BRANCH}", credentialsId: 'jenkins-github-creds', url: "${REPO_URL}"
            }
        }
        }
        stage('Building Docker Image') {
            steps {
                script {
                    dir('docker') {
                        sh "chmod 777 /var/run/docker.sock"
                        sh "docker build -t oxer-html-image ."
                 
}
                
                 }
                }           
            }
        
        stage('Push To DockerHub Registry') {
            steps {
                script {
                sh """
                aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 905418280053.dkr.ecr.us-east-1.amazonaws.com"
                docker tag oxer-html-image 905418280053.dkr.ecr.us-east-1.amazonaws.com/marketvector-app-repo:v001
                docker push 905418280053.dkr.ecr.us-east-1.amazonaws.com/marketvector-app-repo:v001
                """
}
                
                
}
           }
      }
}
        
    
