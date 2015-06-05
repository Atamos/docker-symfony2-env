FROM nginx

RUN mkdir -p /etc/nginx/sites-{available,enabled}

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.local /etc/nginx/sites-available/default.local

COPY nginx.sh /usr/bin/nginx.sh
RUN chmod +x /usr/bin/nginx.sh

RUN useradd www-data
RUN usermod -u 1000 www-data

EXPOSE 8080 443

ENTRYPOINT ["/usr/bin/nginx.sh"]

