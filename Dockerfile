# Found at: https://github.com/organizr/docker-base/pkgs/container/base
FROM omaj/organizr-base:latest

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config
