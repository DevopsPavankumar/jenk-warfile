node{
    stage('i am pulling code from github'){
        git credentialsId: 'ffb783d4-2e62-41a2-ac99-7c99d3e113bc', url: 'https://github.com/DevopsPavankumar/jenk-warfile.git'
    }
    
    stage('build the code using maven'){
        sh 'mvn clean install'
    }
    stage('creating image from output'){
        sh 'docker build -t pavankumarmalli/jenkins_cicd:new .'
    }
    stage('pushing image to docker hub'){
       withCredentials([string(credentialsId: 'docker_cred', variable: 'mydockerhubcredentials')]) {
        sh "docker login -u pavankumarmalli -p ${dockercred}"
    
    }
       
       sh 'docker push pavankumarmalli/jenkins_cicd:new'
    }
}
