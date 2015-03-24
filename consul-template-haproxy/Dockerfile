FROM       elcuervo/consul-template
MAINTAINER elcuervo <elcuervo@elcuervo.net>

RUN apt-get update && apt-get -qy install haproxy

ADD base-haproxy.cfg     /etc/haproxy/haproxy.cfg

ADD consul-haproxy.json  /etc/consul/consul.d/haproxy.json
ADD consul-haproxy.ctmpl /etc/consul-template/templates/haproxy.ctmpl
ADD consul-haproxy.hcl   /etc/consul-template/conf.d/haproxy.hcl

ADD supervisord-haproxy.conf /etc/supervisor/conf.d/haproxy.conf

EXPOSE 80
