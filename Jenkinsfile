#!groovy

def project = 'jenkins-test'

pipeline {
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

                        echo "BUILD_ENV=dev" >> build.env
                        ./build_ui.sh
                    }
                }
            }
        }
    }
}