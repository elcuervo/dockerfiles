FROM       elcuervo/serf-agent-supervisord
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ADD serf-join-master.sh /serf-join-master.sh
ADD supervisord-serf-join.ini /etc/supervisor.d/serf-join.ini

ADD serf-ruby.json /etc/serf/serf.d/ruby.json

RUN apk-install ca-certificates ruby-dev build-base ruby-dev zlib-dev libxslt \
                libgcrypt libxml2-dev curl-dev autoconf

RUN echo "gem: --no-rdoc --no-ri " > /etc/gemrc
RUN chmod 755 /*.sh
