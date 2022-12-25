FROM ubuntu
MAINTAINER SreekanthReddy
RUN apt-get update -y 
RUN  apt-get install -y openjdk-8-jdk
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.70.tar.gz
RUN mv apache-tomcat-9.0.70 opt/tomcat
COPY  Amazon.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"] 

