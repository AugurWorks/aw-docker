# https://github.com/fluent/fluentd-docker-image
FROM fluent/fluentd:ubuntu-base
MAINTAINER Duy Lam <duylamphuong@gmail.com>

COPY fluent.conf /fluentd/etc/fluent.conf

# Allow fluentd to forward to elasticsearch
RUN gem install --no-ri --no-rdoc fluent-plugin-elasticsearch
