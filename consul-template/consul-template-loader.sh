#!/usr/bin/env bash

consul-template -consul ${CONSUL_HOST} -config /etc/consul-template/templates/
