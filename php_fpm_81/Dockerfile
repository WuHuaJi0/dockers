FROM php:8.1-fpm

# add install-php-extensions
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
# install opcache and composer
RUN docker-php-ext-configure opcache --enable-opcache \
    # php.ini 文件
    && docker-php-ext-install opcache \
    && install-php-extensions gd zip pdo_mysql pdo_pgsql pcntl mysqli redis \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# opcache 配置
COPY opcache.ini $PHP_INI_DIR/conf.d/

# php.ini 配置
COPY php.ini $PHP_INI_DIR/