#!/bin/bash

# EXAMPLE CRON SCRIPT
# FEEL FREE TO MODIFY THIS FILE WITH WHATEVER YOU'D LIKE TO RUN PERIODICALLY

touch /var/log/helloworld.txt
echo "hello world [`date`]" >> /var/log/helloworld.txt
