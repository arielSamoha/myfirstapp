pipeline {

    agent {label "ec2"}

    stages{
        stage("Build") {
            steps{
                sh "echo hello ariel"
                sh "ls"
                sh "docker build -t arielapp:$BUILD_NUMBER ."             
                }
            }

        stage("Push") {

            steps {
                sh "aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 182257704198.dkr.ecr.eu-central-1.amazonaws.com"
                sh "docker tag arielapp:$BUILD_NUMBER 182257704198.dkr.ecr.eu-central-1.amazonaws.com/ariel:$BUILD_NUMBER"
                sh "docker push 182257704198.dkr.ecr.eu-central-1.amazonaws.com/ariel:$BUILD_NUMBER"
            }
        }
        
    }
}
