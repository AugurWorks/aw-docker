#!/bin/sh

# Crontab config
# 0 1 * * * /path/to/elasticsearch-backup.sh

filename=`date +%H-%M-%S`-elasticsearch.zip
zip -rq $filename /opt/data/elasticsearch/
location=s3://augurworks-backups/logs/`date +%Y/%m/%d/`
/usr/local/bin/aws s3 cp $filename $location
rm $filename
