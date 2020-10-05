FROM php:7.4-cli

RUN apt-get update \
    && apt-get install -y curl zip unzip \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer