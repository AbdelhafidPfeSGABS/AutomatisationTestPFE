pipeline {
    agent any

    stages {
        stage('Cucumber Test') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew test'
            }
        }

    }

}