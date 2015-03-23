#!/usr/bin/env bash

export GOMAXPROCS=$(nproc)
consul-template -consul ${CONSUL_HOST} -config /etc/consul-template/conf.d/
