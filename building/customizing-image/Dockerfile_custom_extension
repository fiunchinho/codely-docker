FROM php:7.2-apache

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql

COPY php.ini /usr/local/etc/php/php.ini
COPY index.php /var/www/html/
