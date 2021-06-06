FROM php:7.4.1-apache

COPY .docker/php/php.ini /usr/local/etc/php
COPY . /var/www/html/app
COPY .docker/apache/vhosts.conf /etc/apache2/sites-available/000-default.conf

#RUN docker-php-ext-install
RUN apt-get update && \
    apt-get install libpq-dev -y && \
    docker-php-ext-install pdo_pgsql