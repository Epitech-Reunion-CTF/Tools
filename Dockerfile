FROM php:7.4-apache
COPY src/ /var/www/html/
COPY src/000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80 4242