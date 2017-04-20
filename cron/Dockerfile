FROM golang:1.8.1-alpine

RUN apk add --no-cache dcron

COPY assets/cron-script.sh /cron-script.sh
COPY assets/crontab /etc/crontabs/root
COPY assets/entrypoint.sh /

RUN chmod +x /cron-script.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["cron"]
