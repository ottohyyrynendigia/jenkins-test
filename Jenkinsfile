#!groovy

def project = 'jenkins-test'

pipeline {
    agent any
    parameters {
        choice(
            name: 'environment',
            choices: 'Development\nStage\nProduction',
            description: 'Select environment'
        )
    }

    stages {
        stage('Setup') {
            steps {
                script {
                    if (params.environment == 'Development') {
                        echo 'Development selected'



                        

                        
                        
                    }
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    dir(UI_DIR) {
                        echo "Do some UI stuff"
                    }
                }
            }
        }
    }
}