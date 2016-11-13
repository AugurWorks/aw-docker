FROM jenkins:latest

USER root

RUN apt-get update \
    && apt-get install -y sudo dos2unix python2.7 \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python \
    && pip install awscli \
    && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

RUN aws configure set region us-east-1
