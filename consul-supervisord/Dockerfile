FROM       ubuntu
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV CONSUL_VERSION          0.5.0
ENV CONSUL_SERVER           false
ENV CONSUL_BOOTSTRAP_EXPECT 1
ENV CONSUL_HOST             127.0.0.1

RUN apt-get update && apt-get -qy upgrade
RUN apt-get -qy install supervisor unzip wget

RUN wget --quiet "https://dl.bintray.com/mitchellh/consul/${CONSUL_VERSION}_linux_amd64.zip" -O consul.zip
RUN unzip consul.zip && rm consul.zip && mv consul /usr/sbin/
RUN mkdir -p /etc/consul/consul.d/

ADD consul-base.json             /etc/consul/consul.d/base.json
ADD supervisord-consul.conf      /etc/supervisor/conf.d/consul.conf
ADD supervisord-consul-join.conf /etc/supervisor/conf.d/consul-join.conf

ADD start-supervisord.sh    /usr/sbin/start-supervisord
ADD consul-agent.sh         /usr/sbin/consul-agent
ADD consul-join-master.sh   /usr/sbin/consul-join-master

RUN chmod 755 /usr/sbin/*

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53/udp

CMD ["start-supervisord"]
