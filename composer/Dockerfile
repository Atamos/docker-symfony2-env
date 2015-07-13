FROM composer/composer

RUN echo "date.timezone=${PHP_TIMEZONE:-UTC}" > /etc/php5/cli/conf.d/date_timezone.ini
RUN echo "memory_limit=1024M" > /usr/local/etc/php/conf.d/memory-limit.ini

# Time Zone
RUN echo "date.timezone=${PHP_TIMEZONE:-UTC}" > /etc/php5/cli/conf.d/date_timezone.ini

# Environmental Variables
ENV COMPOSER_HOME /root/composer

RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++
RUN docker-php-ext-configure intl 
RUN docker-php-ext-install intl 
RUN docker-php-ext-configure bcmath
RUN docker-php-ext-install bcmath

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

RUN php --version

# Set up the command arguments
CMD ["-"]
ENTRYPOINT ["composer", "--ansi"]


