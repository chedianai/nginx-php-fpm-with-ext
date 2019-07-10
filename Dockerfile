FROM chedianai/nginx-php-fpm:latest

MAINTAINER Qihongchuan <qihongchuan@vchangyi.com>

RUN apk add --no-cache file imagemagick && \
    wget https://pecl.php.net/get/stats-2.0.3.tgz && \
    wget https://pecl.php.net/get/imagick-3.4.4.tgz && \
    tar xf stats-2.0.3.tgz && \
    tar xf imagick-3.4.4.tgz && \
    mkdir -p /usr/src/php/ext && \
    mv stats-2.0.3/ /usr/src/php/ext/stats && \
    mv imagick-3.4.4/ /usr/src/php/ext/imagick && \
    docker-php-ext-install /usr/src/php/ext/stats && \
    docker-php-ext-install /usr/src/php/ext/imagick

