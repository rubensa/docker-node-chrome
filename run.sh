#!/usr/bin/env bash

prepare_docker_timezone() {
  # https://www.waysquare.com/how-to-change-docker-timezone/
  ENV_VARS+=" --env=TZ=$(cat /etc/timezone)"
}

prepare_docker_timezone

docker run --rm -it \
  --name "node-chrome" \
  ${ENV_VARS} \
  rubensa/node-chrome:gallium
