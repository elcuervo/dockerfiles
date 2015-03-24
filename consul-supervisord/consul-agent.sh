#!/usr/bin/env bash

export GOMAXPROCS=$(nproc)
FLAGS="-config-dir /etc/consul/consul.d -data-dir /tmp/consul"

if [[ $CONSUL_SERVER == true ]]; then
  FLAGS="$FLAGS -bootstrap-expect ${CONSUL_BOOTSTRAP_EXPECT:-1}"
fi

consul agent -server $FLAGS
