FROM       onescience/alpine
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV SERF_VERSION 0.6.4

RUN apk-install supervisor unzip

RUN wget --quiet "https://dl.bintray.com/mitchellh/serf/${SERF_VERSION}_linux_amd64.zip" -O serf.zip
RUN unzip serf.zip && rm serf.zip && mv serf /usr/sbin/
RUN mkdir -p /etc/serf/serf.d/

ADD supervisord-serf.ini /etc/supervisor.d/serf.ini
ADD start-supervisord.sh /start-supervisord.sh

RUN chmod 755 /*.sh

EXPOSE 7946 7373

CMD ["/start-supervisord.sh"]
