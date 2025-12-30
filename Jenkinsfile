pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'
    }

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/jayadarshan2708/static-web-s3-host.git',
                    credentialsId: 'git_cred'
            }
        }

        stage('Terraform init and apply') {
            steps {
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws-cred']
                ]) {
                    dir('terraform') {
                        sh '''
                          aws sts get-caller-identity
                          terraform init
                          terraform apply -auto-approve
                        '''
                    }
                }
            }
        }

        stage('Upload website to s3') {
            steps {
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws-cred']
                ]) {
                    sh '''
                      aws sts get-caller-identity
                      aws s3 sync website/ s3://jd-devops-static-site
                    '''
                }
            }
        }
    }
}
