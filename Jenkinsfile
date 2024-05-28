pipeline {
    agent any
<<<<<<< HEAD
    stages {
    
            
        stage('Change File Permissions') {
            steps {
                script {
                    // Change file permissions for build.sh and deploy.sh
                    sh 'chmod +x build-image.sh'
                    sh 'chmod +x deploy.sh'
                }
            }
        }
        
        stage('Build') {
            steps {
                // Run the build-image.sh script
                sh './build-image.sh'
            }
        }
        
        stage('Deploy') {
            steps {
                // Run the deploy.sh script
                sh './deploy.sh'
            }
        }
    }
    
=======

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Grant executable permissions to the build script
                sh 'chmod +x deploy.sh'

                // Build the Docker image using the build script
                sh './deploy.sh'

                
            }
        }

    }
>>>>>>> origin/dev
}
