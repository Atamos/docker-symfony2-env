FROM nginx

RUN mkdir -p /etc/nginx/sites-available
RUN mkdir -p /etc/nginx/site-enabled

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.local /etc/nginx/sites-enabled/default.local
RUN rm /etc/nginx/conf.d/default.conf 

COPY nginx.sh /usr/bin/nginx.sh
RUN chmod +x /usr/bin/nginx.sh

#RUN useradd www-data
RUN usermod -u 1000 www-data

EXPOSE 8080 443

ENTRYPOINT ["/usr/bin/nginx.sh"]

