#!/usr/bin/env sh

if [ "${SERF_SELF_ROLE}" != "load-balancer" ]; then
    echo "Not a load-balancer. Ignoring member join."
    exit 0
fi

ROLE=$(echo $line | awk '{print \$3 }')

if [ "${ROLE}" == "web-node" ]; then
  while read line; do
    echo $line | awk '{ printf "    server %s %s check\n", $1, $2 }' >>/etc/haproxy/haproxy.cfg
  done

  supervisorctl reload haproxy
fi
