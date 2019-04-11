FROM php:7.2-apache
RUN docker-php-ext-install mysqli
RUN apt update -y
RUN apt upgrade -y
RUN apt install php7.2-mongodb php-pear nano -y
RUN pecl install mongo
RUN bash
RUN echo "extension=mongodb.so" >> /etc/php/7.2/apache2/php.ini