FROM openswoole/swoole:22.0-php8.2-alpine

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions \
    bz2 \
    pcntl \
    mbstring \
    bcmath \
    pdo_mysql \
    opcache \
    exif \
    zip \
    intl \
    gd \
    memcached

RUN apk add --no-cache --update supervisor nginx openssh-client nodejs npm

WORKDIR /var/www/app

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
