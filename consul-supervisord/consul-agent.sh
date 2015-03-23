#!/usr/bin/env bash

export GOMAXPROCS=$(nproc)
consul agent -server -bootstrap-expect ${CONSUL_BOOTSTRAP_EXPECT} -config-dir /etc/consul/consul.d -data-dir /tmp/consul
