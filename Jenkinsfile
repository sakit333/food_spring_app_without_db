pipeline {
    agent any

    tools {
        maven = 'maven'
    }

    stages {
        stage("build prepartion") {
            sh 'mvn clean package'
        }
    }
}