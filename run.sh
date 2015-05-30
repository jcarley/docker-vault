#!/usr/bin/env bash

set -e

source /etc/environment
source /etc/application

CONSUL_CONNECT=$COREOS_PRIVATE_IPV4:8500

docker run -d -v $PWD/config:/etc/vault/config  -p 8200:8200 \
  --name vault \
  jcarley/vault \
  server -config /etc/vault/config/vault.hcl


