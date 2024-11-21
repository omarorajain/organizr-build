# Found at: https://github.com/organizr/docker-base/pkgs/container/base
ARG BASE_IMAGE
ARG VERSION=2024-03-08_20
ARG ARCH=linux-arm64

FROM ${BASE_IMAGE:-ghcr.io/organizr/base}:${VERSION}-${ARCH}

LABEL maintainer="christronyxyocum,Roxedus"

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /


# ports and volumes
EXPOSE 80
VOLUME /config
