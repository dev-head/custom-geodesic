#!/usr/bin/env bash

OWNER="${1:-custom-example/geodesic}"
OS="${2:-debian}"
VERSION="${3:-2.7.1}"
INSTALL="${4:-true}"

echo "[building docker image]::[${OWNER}]::[${OS}]::[${VERSION}]"

docker build \
    --build-arg VERSION=${VERSION} \
    --build-arg OS=${OS} \
    --build-arg CUSTOM_VERSION=${VERSION} \
    --build-arg CUSTOM_OS=${OS} \
    --build-arg CUSTOM_OWNER=${OWNER} \
     -t ${OWNER}:${VERSION}-${OS} \
     . 

if [[ "${INSTALL}" == true ]]; then
    echo "[installing custom geodesic]::[${OWNER}]::[${OS}]::[${VERSION}]" 
    docker run --rm ${OWNER}:${VERSION}-${OS} init | bash
fi