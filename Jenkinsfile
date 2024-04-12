pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                bat 'cmd /c gradlew test' // Pour les systèmes Windows
            }
        }
    }
}
