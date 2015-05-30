#!/bin/bash

set -e

docker rmi jcarley/vault:latest || true
docker rmi jcarley/vault:0.1.2 || true
docker build --rm -t jcarley/vault:latest . && \
  docker tag jcarley/vault:latest jcarley/vault:0.1.2 && \
  docker push jcarley/vault
