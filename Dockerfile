FROM jenkins/jenkins:latest

ARG JENKINS_HOME=/var/jenkins_home
ENV JENKINS_HOME $JENKINS_HOME

COPY plugins.txt $JENKINS_HOME/plugins.txt
COPY files/disable-script-security.groovy $JENKINS_HOME/init.groovy.d/disable-script-security.groovy
COPY files/jenkins.sh files/check.sh /usr/local/bin/
ADD jasc/ /opt/jasc/

RUN install-plugins.sh < $JENKINS_HOME/plugins.txt

USER root

ARG DOCKER_GROUP_ID
RUN curl https://get.docker.com | sh \
    && groupmod -g ${DOCKER_GROUP_ID} docker \
    && usermod -aG docker jenkins \
    && chmod +x /usr/local/bin/jenkins.sh /usr/local/bin/check.sh

USER jenkins

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
