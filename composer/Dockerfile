FROM composer/composer

RUN docker-php-ext-configure intl && docker-php-ext-install intl
RUN docker-php-ext-configure mbstring && docker-php-ext-install mbstring

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
ENTRYPOINT ["composer", "--ansi"]


