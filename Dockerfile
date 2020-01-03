FROM composer:1.9

# 指定阿里云 composer 镜像
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/