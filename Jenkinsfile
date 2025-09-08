pipeline{
    agent {dockerfile true
    }

    stages{
        stage ('Checkout'){
            steps{
                git branch : 'master',
                url :'https://github.com/WillieBam/ci-cd-engineer-role-exercise.git'
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
                echo 'deploy is deploying'
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