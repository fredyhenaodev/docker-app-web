FROM phusion/baseimage:latest

LABEL maintainer="Miguel Ortiz <miguelortiz@outloook.com>"

COPY run-certbot.sh /root/certbot/run-certbot.sh

RUN apt-get update
RUN apt-get install -y letsencrypt

ENTRYPOINT bash -c "bash /root/certbot/run-certbot.sh && sleep infinity"