#!/usr/bin/env bash

export GOMAXPROCS=$(nproc)
consul-template -consul ${CONSUL_HOST}:${CONSUL_PORT:-8500} -config /etc/consul-template/conf.d/
