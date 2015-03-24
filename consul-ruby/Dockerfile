FROM       elcuervo/consul-build-deps
MAINTAINER elcuervo <elcuervo@elcuervo.net>

ENV CONSUL_HOST 127.0.0.1
ENV RUBY_MAJOR 2.2
ENV RUBY_VERSION 2.2.1

RUN apt-get update \
	&& apt-get install -y bison libgdbm-dev ruby \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir -p /usr/src/ruby \
	&& curl -SL "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.bz2" \
		| tar -xjC /usr/src/ruby --strip=1 \
	&& cd /usr/src/ruby \
	&& autoconf \
	&& ./configure --disable-install-doc \
	&& make -j"$(nproc)" \
	&& make install \
	&& apt-get purge -y --auto-remove bison libgdbm-dev ruby \
	&& rm -r /usr/src/ruby

RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

ADD consul-ruby.json  /etc/consul/consul.d/ruby-webapp.json
