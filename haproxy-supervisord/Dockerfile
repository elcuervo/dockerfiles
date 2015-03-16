FROM       onescience/alpine
MAINTAINER elcuervo <elcuervo@elcuervo.net>

RUN apk-install haproxy supervisor
ADD supervisord-haproxy.ini /etc/supervisor.d/haproxy.ini
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD start-supervisord.sh /start-supervisord.sh

RUN chmod 755 /*.sh
RUN rm -rf /var/cache/apk/*

EXPOSE 80
CMD ["/start-supervisord.sh"]
