pipeline {
    agent any
            stage('Permission') {
                steps {
                    sh 'chmod +x gradlew'
                }
            }

            stage('Build') {
                steps {
                    sh './gradlew clean build'
                }
            }

            stage('Test') {
                steps {
                    sh './gradlew test'
                }
            }
}

