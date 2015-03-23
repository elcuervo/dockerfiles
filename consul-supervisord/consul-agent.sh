#!/usr/bin/env bash

export GOMAXPROCS=$(nproc)
consul agent -server -bootstrap-expect 3 -config-dir /etc/consul/consul.d -data-dir /tmp/consul
