FROM jenkins:latest

USER root

RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y sudo dos2unix zip python2.7 nodejs \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python \
    && pip install awscli \
    && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

RUN aws configure set region us-east-1
