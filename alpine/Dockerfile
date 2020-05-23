FROM resin/raspberry-pi-alpine:3.7-20180215

MAINTAINER Nicolas Singh <nicolas.singh@gmail.com>

# entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
