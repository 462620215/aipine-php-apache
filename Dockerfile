FROM daocloud.io/php:5.6-apache
MAINTAINER wangsh<462620215@qq.com>

COPY php.ini /usr/local/etc/php

RUN apt-get update && apt-get install -y vim

RUN docker-php-ext-install pdo_mysql
    
WORKDIR /work

