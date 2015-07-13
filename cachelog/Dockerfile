FROM ubuntu:14.04 

#RUN useradd www-data
RUN usermod -u 1000 www-data

RUN mkdir -p /var/symfony/cache
RUN mkdir -p /var/symfony/logs

RUN chown -R www-data /var/symfony
RUN chmod -R 775 /var/symfony 

VOLUME ["/var/symfony/cache", "/var/symfony/logs"]

