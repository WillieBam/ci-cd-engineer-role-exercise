pipeline{
    agent any
    stages{
        stage ('Checkout'){
            steps{
                git branch :
            }
        }

        stage ('Build'){
            steps {
                powershell 'gradle build'
            }

        }

        stage ('Test'){
            steps{
                powewrshell 'gradle test'
            }
        }

        stage ('Deploy'){
            steps{
                powershell 'java -jar build/libs/hello-world-java-V1.jar'
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