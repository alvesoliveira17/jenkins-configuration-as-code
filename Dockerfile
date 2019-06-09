FROM jenkins/jenkins:2.174

ARG JENKINS_HOME=/var/jenkins_home
ENV JENKINS_HOME $JENKINS_HOME

COPY plugins.txt $JENKINS_HOME/plugins.txt

RUN install-plugins.sh < $JENKINS_HOME/plugins.txt

COPY files/jenkins.sh /usr/local/bin/jenkins.sh

USER root

RUN curl https://get.docker.com | sh \
    && usermod -aG docker jenkins

RUN chmod +x /usr/local/bin/jenkins.sh

USER jenkins

ADD jasc/ /opt/jasc/

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
