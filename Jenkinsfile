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

    environment {
        UI_DIR = ''
    }

    stages {
        stage('Setup') {
            steps {
                script {
                    if (params.environment == 'Development') {
                        echo 'Development selected'

                        
                        sh('./build_ui.sh')

                        UI_DIR = 'ui'
                    }
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    if (UI_DIR != '') {
                        dir(UI_DIR) {
                            echo "Do some UI stuff"
                        }
                    }
                    
                }
            }
        }
    }
}