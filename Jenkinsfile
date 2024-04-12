pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Étape pour récupérer le code source depuis Git
                git 'https://github.com/AbdelhafidPfeSGABS/AutomatisationTestPFE/tree/main'
            }
        }

        stage('Test') {
            steps {
                // Étape pour exécuter les tests avec Gradle
                sh './gradlew clean test'
            }
        }
    }
}
