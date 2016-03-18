FROM php:5.6-fpm

RUN apt-get update && docker-php-ext-install mysql mysqli pdo pdo_mysql mbstring \
	&& apt-get install -y libpng12-dev libjpeg-dev \
	&& docker-php-ext-install gd \
	&& apt-get install -y libcurl4-gnutls-dev \ 
	&& docker-php-ext-install curl \
	&& apt-get install -y libmcrypt-dev \ 
	&& docker-php-ext-install mcrypt \
	&& apt-get install -y libmagickwand-dev --no-install-recommends \
	&& pecl install imagick \
	&& docker-php-ext-enable imagick \
	&& apt-get install -y libmemcached-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached \
	&& pecl install redis \
    && docker-php-ext-enable redis \
	&& rm -r /var/lib/apt/lists/*

# set recommended PHP.ini settings
# see https://github.com/docker-library/wordpress/blob/master/apache/Dockerfile
# see https://secure.php.net/manual/en/opcache.installation.php
RUN { \
		echo 'opcache.memory_consumption=128'; \
		echo 'opcache.interned_strings_buffer=8'; \
		echo 'opcache.max_accelerated_files=4000'; \
		echo 'opcache.revalidate_freq=60'; \
		echo 'opcache.fast_shutdown=1'; \
		echo 'opcache.enable_cli=1'; \
	} > /usr/local/etc/php/conf.d/opcache-recommended.ini