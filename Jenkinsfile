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
        stage('Deploy to Server') {
                    steps {
                        script {
                                    // Copier le fichier de rapport Karate vers le serveur via SSH (port 2222 pour le conteneur Docker)
                                    sh 'scp -P 2222 chemin/vers/rapport-karate.html root@localhost:/chemin/destination/'
                                }
                    }
                }
    }

}