FROM php:5.6-fpm

RUN apt-get update && \
  apt-get install -y \
  php5-mysql \
  php-pear \
  php-apc \
  php5-curl \
  vim \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*

RUN usermod -u 1000 www-data

RUN docker-php-ext-install mysqli
