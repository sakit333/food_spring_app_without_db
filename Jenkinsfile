pipeline {
    agent any

    tools {
        maven 'maven'
    }

    stages {
        stage("build prepartion") {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}