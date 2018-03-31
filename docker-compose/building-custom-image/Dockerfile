FROM composer as builder

WORKDIR /app

COPY composer.json /app/
RUN composer install  \
    --ignore-platform-reqs \
    --no-ansi \
    --no-autoloader \
    --no-dev \
    --no-interaction \
    --no-scripts

COPY . /app/
RUN composer dump-autoload --no-dev --optimize --classmap-authoritative


FROM php:7.2-apache

LABEL maintainer="Jose Armesto <jose@armesto.net>"

EXPOSE 80

RUN pecl install xdebug-2.6.0; \
    docker-php-ext-enable xdebug; \
	usermod -u 1000 www-data; \
    a2enmod rewrite; \
    chown -R www-data:www-data /var/www/html

WORKDIR /app
COPY php.ini /usr/local/etc/php/php.ini
COPY --from=builder /app /var/www/html/
