FROM resin/rpi-raspbian:stretch-20180214

MAINTAINER Nicolas Singh <nicolas.singh@gmail.com>

# download required software
RUN apt-get update -y && \
  apt-get -y install cron && \
  rm -rf /var/lib/apt/lists/*

# entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
