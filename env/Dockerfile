FROM alpine

ENV LIGHTTPD_VERSION=1.4.55-r1

RUN apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} \
	lighttpd-mod_auth \
    && rm -rf /var/cache/apk/*

RUN apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} \
    lighttpd-mod_auth \
    fcgi \
    php7-cgi \
    php7-common \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-gettext \
    php7-iconv \
    php7-imap \
    php7-json \
    php7-ldap \
    php7-mcrypt \
    php7-mysqli \
    php7-pdo \
    php7-pdo_mysql \
    php7-posix \
    php7-soap \
    php7-xml \
    php7-xmlrpc \
    && rm -rf /var/cache/apk/*

COPY resource/lighttpd/* /etc/lighttpd/
COPY resource/start.sh /usr/local/bin/

EXPOSE 80

VOLUME /var/www/localhost
VOLUME /etc/lighttpd

CMD ["start.sh"]