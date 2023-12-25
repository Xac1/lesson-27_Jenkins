FROM jenkins/inbound-agent

USER root
ADD docker/docker /usr/bin/docker
RUN chmod -R a+rw /usr/bin

#RUN addgroup docker
RUN usermod -aG docker jenkins

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose

USER jenkins

