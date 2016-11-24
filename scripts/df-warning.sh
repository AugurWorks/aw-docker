#!/bin/sh

# Crontab config
# 0/30 * * * * /path/to/df-warning.sh /drive/name threshold fluentd_host
# 0/30 * * * * /path/to/df-warning.sh /dev/xvda1 90 docker.augurworks.com

diskuse=`df -hl $1 | awk '{ print $5 }' | tail -n 1 | sed 's/%//'`

if [ $diskuse -ge $2 ]; then
  body='{"attachments":[{"color": "warning", "fields":[{"title": "Warning", "value": "Docker host disk usage is '$diskuse'%"}]}]}'
  curl -H "Content-Type: application/json" -X POST -d "$body" https://hooks.slack.com/services/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
else
  docker run --rm -e MESSAGE="Disk usage is $diskuse%" -e FLUENTD_HOST=$3 274685854631.dkr.ecr.us-east-1.amazonaws.com/python-logger
fi
