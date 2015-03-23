FROM       elcuervo/consul-supervisord
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV CONSUL_TEMPLATE_VERSION 0.7.0
ENV CONSUL_HOST 127.0.0.1

RUN wget --quiet "https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz" -O consul_template.tgz
RUN tar xfz consul_template.tgz --strip=1 && rm consul_template.tgz && mv consul-template /usr/sbin

RUN apt-get update && apt-get -qy install haproxy

ADD consul-template-haproxy.sh /usr/sbin/consul-template-haproxy
ADD base-haproxy.cfg /etc/haproxy/haproxy.cfg

ADD consul-haproxy.ctmpl /haproxy.ctmpl
ADD supervisord-haproxy.conf /etc/supervisor/conf.d/haproxy.conf
ADD supervisord-consul-template.conf /etc/supervisor/conf.d/consul-template.conf

RUN chmod 755 /usr/sbin/*
