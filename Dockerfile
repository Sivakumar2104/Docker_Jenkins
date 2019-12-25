FROM ubuntu:latest

USER root

RUN apt update && \
    apt install -y curl default-jre git 

ENV JAVA_HOME /usr
ENV PATH $JAVA_HOME/bin:$PATH

ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

# configure the container to run jenkins, mapping container port 8080 to that host port
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080

CMD [""]
