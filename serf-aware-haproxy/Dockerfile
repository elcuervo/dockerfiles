FROM       elcuervo/serf-agent-haproxy
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ADD load-balancer-member-join.sh  /load-balancer-member-join.sh
ADD load-balancer-member-leave.sh /load-balancer-member-leave.sh
ADD serf-join-master.sh           /serf-join-master.sh

ADD supervisord-serf-join.ini /etc/supervisor.d/serf-join.ini
ADD serf-balancer.json /etc/serf/serf.d/balancer.json

RUN chmod 755 /*.sh
