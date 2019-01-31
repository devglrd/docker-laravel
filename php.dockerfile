FROM php:7-fpm

RUN apt-get update -y
RUN apt-get install -y openssl zip unzip git

RUN apt-get install -y libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
    libfreetype6-dev

RUN docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir \
    --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir \
    --enable-gd-native-ttf

RUN docker-php-ext-install pdo mbstring pdo_mysql gd bcmath

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD ./src/php /var/www/php


#RUN cp .env.example .env
#RUN php artisan key:generate
#RUN composer install
#RUN chown -R :www-data /var/www/html
#RUN chmod -R 777 /var/www/html/storage

