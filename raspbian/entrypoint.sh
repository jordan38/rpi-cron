#!/bin/bash

# update crontab template
echo "${@}" > /etc/cron.d/crondconfig
echo "#" >> /etc/cron.d/crondconfig

# start cron service
cron

# sleep forever
sleep infinity
