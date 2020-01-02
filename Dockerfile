FROM php:7.3-fpm
# 安装 opcache
#RUN docker-php-ext-configure opcache --enable-opcache \
#    && docker-php-ext-install opcache

# opcache 配置
#COPY ./opcache.ini $PHP_INI_DIR/conf.d/

# mysql and pdo_mysql
RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli