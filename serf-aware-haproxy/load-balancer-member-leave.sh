#!/usr/bin/env sh

if [ "${SERF_SELF_ROLE}" != "load-balancer" ]; then
  echo "Not a load-balancer. Ignoring member join."
  exit 0
fi

[ -z "$UPDATE_ROLE" ] && UPDATE_ROLE="web-node"

while read line; do
  ROLE=$(echo $line | awk '{print $3 }')
  if [[ $ROLE == $UPDATE_ROLE ]]; then
    NAME=$(echo $line | awk '{print $1 }')
    sed -i'' "/${NAME} /d" /etc/haproxy/haproxy.cfg

    supervisorctl reload haproxy
  fi
done
