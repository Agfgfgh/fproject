pipeline {
    agent any

    parameters {
        string(name: 'user_input', defaultValue: '0', description: 'A numeric parameter')
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/szeevi/fibvar.git'  // Replace with your repository URL
            }
        }

        stage('Run Shell Script') {
            steps {
                sh "bash fibvar.sh ${params.user_input}"
            }
        }

        stage('Display Parameter') {
            steps {
                script {
                    currentBuild.description = "Numeric parameter is ${params.user_input}"
                }
            }
        }

        stage('Verify Parameter on Web Page') {
            steps {
                script {
                    def description = currentBuild.description
                    if (description.contains("${params.user_input}")) {
                        echo "Parameter ${params.user_input} exists on the web page."
                    } else {
                        error "Parameter ${params.user_input} does not exist on the web page."
                    }
                }
            }
        }
    }
}
