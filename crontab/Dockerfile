FROM ubuntu:latest

LABEL maintainer="Fredy Henao <fredyhenao45y@gmail.com>"

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/laravel-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/laravel-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

#Install Cron
RUN apt-get update \
    && apt-get -y install cron


# Run the command on container startup
CMD cron && tail -f /var/log/cron.log