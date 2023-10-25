FROM richarvey/nginx-php-fpm:1.9.1

RUN mkdir -p /var/www/html/public
COPY . /var/www/html/public

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

CMD ["/start.sh"]