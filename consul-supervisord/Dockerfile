FROM       ubuntu
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV CONSUL_VERSION 0.5.0

RUN apt-get update && apt-get -qy upgrade
RUN apt-get -qy install supervisor unzip wget

RUN wget --quiet "https://dl.bintray.com/mitchellh/consul/${CONSUL_VERSION}_linux_amd64.zip" -O consul.zip
RUN unzip consul.zip && rm consul.zip && mv consul /usr/sbin/
RUN mkdir -p /etc/consul/consul.d/

ADD supervisord-consul.conf /etc/supervisor/conf.d/consul.conf
ADD start-supervisord.sh /start-supervisord.sh

RUN chmod 755 /*.sh

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53/udp

CMD ["/start-supervisord.sh"]
