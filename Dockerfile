FROM chedianai/nginx-php-fpm:latest

MAINTAINER Qihongchuan <qihongchuan@vchangyi.com>

RUN wget https://pecl.php.net/get/stats-2.0.3.tgz && \
    tar xf stats-2.0.3.tgz && \
    mkdir -p /usr/src/php/ext && \
    mv stats-2.0.3/ /usr/src/php/ext/stats && \
    docker-php-ext-install /usr/src/php/ext/stats
