pipeline {
    agent any

    stages {
             stage('checkout') {
                    steps {
                        // Checkout du code depuis votre SCM
                        git branch: 'main', url: 'https://github.com/AbdelhafidPfeSGABS/AutomatisationTestPFE.git'
                    }
                }
        stage('Cucumber Test') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew test'
            }
        }

    }

}