FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    git \
    curl \
    php5-cli \
    php5-json \
    php5-intl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN /usr/local/bin/composer self-update

ENV COMPOSER_HOME /root/composer

RUN apt-get install php5-curl 

VOLUME ['/app']

WORKDIR /app
CMD ["/usr/local/bin/composer"]
