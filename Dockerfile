FROM daocloud.io/php:5.6-apache

MAINTAINER wangsh<462620215@qq.com>

WORKDIR /work

EXPOSE 80

ENTRYPOINT apachectl start
