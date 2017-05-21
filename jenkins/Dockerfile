FROM jenkins:latest

RUN mkdir -p /var/jenkins_home/.ssh

USER root

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y sudo dos2unix zip jq python2.7 nodejs \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python \
    && pip install awscli \
    && rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN curl -s https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker
RUN chmod a+x /usr/local/bin/*

RUN ln -s /var/jenkins_home/.ssh ~/.ssh

RUN aws configure set region us-east-1
