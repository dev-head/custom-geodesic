ARG VERSION=2.7.1
ARG OS=debian
FROM cloudposse/geodesic:$VERSION-$OS

ARG CUSTOM_OWNER="custom-example/geodesic"
ARG CUSTOM_VERSION="2.7.1"
ARG CUSTOM_OS="debian"
    
ENV BANNER="${CUSTOM_OWNER}"
ENV DOCKER_IMAGE="$CUSTOM_OWNER"
ENV DOCKER_TAG="$CUSTOM_VERSION-$CUSTOM_OS"
ENV HOME=/localhost
    
RUN echo "installing more tooling" \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends --no-install-suggests \
        atmos
