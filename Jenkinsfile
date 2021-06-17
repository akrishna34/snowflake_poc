pipeline {
    agent any


    stages {
        stage('Clone Repository') {

            steps {

                checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/dev']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/akrishna34/snowflake_poc.git']]]


            }
        }
        stage('Build') {
            steps {
                sh 'docker build --build-arg account=dwa31784.us-east-1  --build-arg  user=akrishna34  --build-arg  role=ACCOUNTADMIN --build-arg  warehouse=compute_wh  --build-arg  SNOWFLAKE_PASSWORD=Asuccess34@ --no-cache . --tag snow_chnage:v1'
            }
        }
        stage('Run Image') {
            steps {
                sh 'docker run -it --name myfirstapp snow_chnage:v1'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
    post {
        always {
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}