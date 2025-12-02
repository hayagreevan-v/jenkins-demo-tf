pipeline {
    agent any
    stages {
        stage("Clean up"){
            steps {
                deleteDir()
            }
        }
        stage("Clone Repo"){
            steps {
                sh "git clone https://github.com/hayagreevan-v/jenkins-demo-tf.git"
            }
        }
        stage("Terraform init"){
            steps {
                dir("jenkins-demo-tf"){
                    withAWS(credentials: 'aws-training', region: 'us-east-1'){
                        sh "terraform init"
                    }
                }
            }
        }
        stage("Terraform plan"){
            steps {
                dir("jenkins-demo-tf"){
                    withAWS(credentials: 'aws-training', region: 'us-east-1'){
                        sh "terraform plan"
                    }
                }
            }
        }
        stage("Terraform apply"){
            steps {
                dir("jenkins-demo-tf"){
                    withAWS(credentials: 'aws-training', region: 'us-east-1'){
                        sh "terraform apply"
                    }
                }
            }
        }
    }
}
post {
    always {
        cleanWs()
    }
}