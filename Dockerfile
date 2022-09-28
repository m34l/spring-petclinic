FROM anapsix/alpine-java 
LABEL maintainer="shanem@liatrio.com"
COPY /root/jenkins/workspace/Project/target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar 
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
