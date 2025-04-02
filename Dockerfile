# Found at: https://github.com/organizr/docker-base/pkgs/container/base
FROM omaj/organizr-base:latest

ENV fpm="false" branch="v2-master"

# Add local files
COPY root/ /

# Expose ports and volumes
EXPOSE 80
VOLUME /config
