pipeline {
    agent any

    tools {
        go 'go1.15.6'
    }
    // environment {
    //     GO114MODULE = 'on'
    //     CGO_ENABLED = 0 
    //     GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    // }
	
    stages {
        stage('Verify branch') {
            steps {
                echo "$GIT_BRANCH"
            }
        }
        stage('Pre Test') {
            steps {
                echo 'Installing dependencies'
                pwsh(script: 'go version')
                pwsh(script: 'docker images -a')
                pwsh(script: """
                    cd cmd/simple-go-service/internal
                    go test
                """)
            }
        }
    }
}