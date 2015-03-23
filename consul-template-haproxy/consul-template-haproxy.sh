#!/usr/bin/env bash

consul-template -consul ${CONSUL_HOST} -template /haproxy.ctmpl:/etc/haproxy/haproxy.conf
