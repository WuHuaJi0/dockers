FROM php:7.3-fpm
# 安装 opcache
RUN docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache
# opcache 配置
COPY ./opcache.ini $PHP_INI_DIR/conf.d/