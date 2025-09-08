pipeline{
    agent any

    stages{
        stage ('Checkout'){
            steps{
                git branch : 'master',
                url :'https://github.com/WillieBam/ci-cd-engineer-role-exercise.git'
            }
        }

        stage ('Build'){
            steps {
                bat 'gradle build'
            }

        }

        stage ('Test'){
            steps{
                bat 'gradle test'
            }
        }

        stage ('Deploy'){
            steps{
                powershell 'docker build -t deployment-env .'
            }
        }
        stage ('Production'){
            steps{
                powershell 'docker run deployment_env:latest'
            }
        }
    }
}
post{
    always{
        echo 'Clean up workspace'
        deleteDir()
    }
    success{
        echo 'Yoo success'

    }
    failure{
        echo 'Build failed damn'
    }
}