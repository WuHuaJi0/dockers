FROM php:5.6-fpm

# 安装 pdo
RUN docker-php-ext-install pdo_mysql pdo mysqli

# 编译安装 redis
COPY ./redis /tmp/redis
RUN cd /tmp/redis && phpize && ./configure && make && make install


# 构建命令：
# docker build -t wuhuaji/php-fpm:5.6 ./
