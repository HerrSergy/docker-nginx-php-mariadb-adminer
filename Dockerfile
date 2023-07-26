# Image and version
FROM php:8.2-fpm

# Install dependencies
RUN apt update && \
    apt install --no-install-recommends -y \
    zlib1g-dev \
    libpng-dev \
    libzip-dev \
    unzip

# Call PHP images script `docker-php-ext-install` and install language extensions
RUN docker-php-ext-install zip mysqli pdo_mysql

# Install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
COPY config/php.ini /usr/local/etc/php/conf.d/php.ini
COPY config/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini