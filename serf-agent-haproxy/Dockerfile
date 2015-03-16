FROM       elcuervo/serf-agent-supervisord
MAINTAINER elcuervo <elcuervo@elcuervo.net>

RUN apk-install haproxy
ADD supervisord-haproxy.ini /etc/supervisor.d/haproxy.ini
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

EXPOSE 80
