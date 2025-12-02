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
                    withCredentials([
                    aws(
                        credentialsId: 'aws-training',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]){
                        sh "terraform init"
                    }
                }
            }
        }
        stage("Terraform plan"){
            steps {
                dir("jenkins-demo-tf"){
                    withCredentials([
                    aws(
                        credentialsId: 'aws-training',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]){
                        sh "terraform plan"
                    }
                }
            }
        }
        stage("Terraform apply"){
            steps {
                dir("jenkins-demo-tf"){
                    withCredentials([
                    aws(
                        credentialsId: 'aws-training',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    )
                ]){
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