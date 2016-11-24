#!/bin/sh

# Crontab config
# 0 1 * * * /path/to/jenkins-backup.sh

filename=`date +%H-%M-%S`-jenkins.zip
sudo zip -rq $filename /opt/jenkins -x *.m2* -x *.gradle* -x *workspace* -x *.JDK* -x *GrailsInstallation* -x *cache*
location=s3://augurworks-backups/jenkins/`date +%Y/%m/%d/`
/usr/local/bin/aws s3 cp $filename $location
sudo rm $filename
