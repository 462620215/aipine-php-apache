FROM daocloud.io/php:5.6-apache
MAINTAINER wangsh<462620215@qq.com>

COPY php.ini /usr/local/etc/php

RUN sudo apt-get update \
    && sudo apt-get install -y wget

RUN cd /usr/local/lib/php/extensions/no-debug-non-zts-20131226 \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/gd.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/mbstring.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/mcrypt.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/memcache.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/memcached.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/mysqli.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/opcache.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/pdo_mysql.so \
    && wget http://brandpano.oss-cn-shenzhen.aliyuncs.com/extensions/zlib.so \
    
WORKDIR /work

