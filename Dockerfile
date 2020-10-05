FROM php:7.4-cli

RUN apt-get update \
    && apt-get install -y curl zip unzip git supervisor sqlite3 \
    && php -r "readfile("http://getcomposer.org/installer");" | php -- --install-dir=/usr/bin/ --filename=composer \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \


