FROM resin/rpi-raspbian:stretch-20180214

LABEL Nicolas Singh <nicolas.singh@gmail.com>

# download required software
RUN apt-get update -y && \
    apt-get install -y \
                    cron && \
                    apt-get install postgresql-9.6 postgresql-contrib libpq-dev && \
    rm -rf /var/lib/apt/lists/*

# entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

VOLUME /data

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
