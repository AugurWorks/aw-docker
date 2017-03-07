# https://github.com/fluent/fluentd-docker-image
FROM fluent/fluentd:v0.12
MAINTAINER Duy Lam <duylamphuong@gmail.com>

# Allow fluentd to forward to elasticsearch
RUN gem install --no-ri --no-rdoc fluent-plugin-elasticsearch fluent-plugin-s3

COPY fluent.conf /fluentd/etc/fluent.conf
