FROM omaj/organizr-base:edge

ENV fpm="false" branch="v2-master"

# Add local files
COPY root/ /

# Expose ports and volumes
EXPOSE 80
VOLUME /config
