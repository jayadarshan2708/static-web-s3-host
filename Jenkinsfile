pipeline
{
    agent any
    environment
    {
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages
    {
        stage('Clone Repository')
        {
            steps
            {
                git branch: 'main', url: 'https://github.com/jayadarshan2708/static-web-s3-host.git', credentialsId: 'git_cred'
            }
        }
        stage ('Terraform init and apply')
        {
          steps
          {
            dir('terraform')
            {
              sh '''
                terraform init
                terraform apply -auto-approve
              '''
            }  
        }
        }
        stage ('Upload website ti s3')
        {
          steps 
          {
            sh '''
              aws s3 sync website/ s3://devops-static-site
            '''
          }
        }
    }
}