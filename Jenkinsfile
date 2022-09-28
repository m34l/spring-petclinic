#!groovy

pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.8.6'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t spring-petclinic:latest .'
      }
    }
    stage('Docker Compose') {
       agent any
      steps {
      sh 'docker-compose up -d'
   }   
  }
 }
}
