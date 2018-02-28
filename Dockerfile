FROM php:7.1-alpine

MAINTAINER Wouter Peschier <kielabokkie@gmail.com>

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_BIN_DIR /usr/local/bin

RUN apk --update --no-cache add curl git \
    && (curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer) \
    && composer global require phpunit/phpcov \
    && composer global require php-coveralls/php-coveralls \
    && composer clear-cache \
    && apk del curl git \
    && rm /var/cache/apk/*

CMD ["/bin/sh"]
