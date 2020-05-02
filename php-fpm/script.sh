#!/bin/bash
cron -f &
docker-php-entrypoint php-fpm7.4
