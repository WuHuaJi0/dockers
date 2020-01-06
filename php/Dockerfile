FROM php:7.3-fpm
RUN docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache
COPY ./opcache.ini $PHP_INI_DIR/conf.d/