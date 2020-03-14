FROM php:7.3-fpm

# install opcache and composer
RUN docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache \
    #composer
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    # composer need zip command
    && apt update &&  apt install -y zip \
    && rm -rf /var/lib/apt/lists/* \
    # apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
    # mysql and pdo_mysql
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    # redis
    && pecl install redis \
    && docker-php-ext-enable redis

# opcache 配置
COPY ./opcache.ini $PHP_INI_DIR/conf.d/
