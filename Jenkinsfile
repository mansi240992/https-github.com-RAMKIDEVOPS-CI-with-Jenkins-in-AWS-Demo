pipeline {
    agent any
 
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'feature', url: 'https://github.com/mansi240992/https-github.com-RAMKIDEVOPS-CI-with-Jenkins-in-AWS-Demo.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
             
                sh 'mvn clean package'             
          }
        }
   stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t samplewebapp:latest -f /var/lib/jenkins/workspace/docker_new/Dockerfile .' 
                sh 'docker tag samplewebapp mansi1992/samplewebapp:latest'
                
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          sh  'docker push mansi1992/samplewebapp:latest'
        
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
   {
                sh "docker run -d -p 8003:80 mansi1992/samplewebapp:latest"
 
            }
        }

    }
 }
