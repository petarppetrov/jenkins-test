pipeline {
    agent any

    // tools {
    //     go 'go1.15.6'
    // }
    // environment {
    //     GO114MODULE = 'on'
    //     CGO_ENABLED = 0 
    //     GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    // }
	
    stages {        
        stage('Pre Test') {
            steps {
                echo 'Installing dependencies'
                sh 'go version'
            }
        }
        stage('Verify branch') {
            steps {
                echo '$GIT_BRANCH'
            }
        }
    }
}