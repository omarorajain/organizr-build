# Found at: https://github.com/organizr/docker-base/pkgs/container/base
FROM omaj/organizr-base:test

ENV fpm="false" branch="v2-master"

# Add local files
COPY root/ /

# Make Executable
RUN chmod +x /etc/cont-init.d/* /etc/services.d/nginx/run \
/etc/services.d/php-fpm/run \
/etc/services.d/cron/run

# Expose ports and volumes
EXPOSE 80
VOLUME /config
