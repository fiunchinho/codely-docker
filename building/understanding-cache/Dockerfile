FROM php:7.2-apache

COPY index.php /var/www/html/
COPY php.ini /usr/local/etc/php/php.ini

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql
