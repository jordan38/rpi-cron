#!/bin/bash

# update crontab template
echo "${@}" > /tmp/crontab
crontab /tmp/crontab
rm -rf /tmp/crontab

# start cron service
crond -f
