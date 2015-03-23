FROM       elcuervo/consul-supervisord
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV CONSUL_TEMPLATE_VERSION 0.7.0
ENV CONSUL_HOST 127.0.0.1

RUN wget --quiet "https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz" -O consul_template.tgz
RUN tar xfz consul_template.tgz --strip=1 && rm consul_template.tgz && mv consul-template /usr/sbin

RUN mkdir -p /etc/consul-template/templates

ADD consul-template-loader.sh /usr/sbin/consul-template-loader
ADD consul-base.hcl /etc/consul-template/templates/base.hcl
ADD supervisord-consul-template.conf /etc/supervisor/conf.d/consul-template.conf

RUN chmod 755 /usr/sbin/*
