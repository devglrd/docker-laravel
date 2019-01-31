FROM jwilder/nginx-proxy

ADD ./src/html /var/www/html
ADD ./src/php /var/www/php
