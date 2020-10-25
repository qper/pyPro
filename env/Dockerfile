FROM alpine

ENV LIGHTTPD_VERSION=1.4.55-r1

RUN apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} \
    lighttpd-mod_auth \
    fcgi \
    && rm -rf /var/cache/apk/*

COPY resource/lighttpd/* /etc/lighttpd/
COPY resource/start.sh /usr/local/bin/

EXPOSE 80

VOLUME /var/www/localhost
VOLUME /etc/lighttpd

CMD ["start.sh"]