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
        stage('Build') {
            steps {
                script {
                    if (params.environment == 'Development') {
                        echo 'Development selected'


                    }
                }
            }
        }
    }
}