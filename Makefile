VERSION = 2

default: all

.PHONY: php-fpm nginx all mysql composer shared


all: php-fpm nginx mysql busybox composer shared

composer:
	cd composer; \
	docker build -t atamos/composer:$(VERSION) .

php-fpm:
	cd php-fpm; \
	docker build -t atamos/php-fpm:$(VERSION) .

nginx:
	cd nginx; \
	docker build -t atamos/nginx:$(VERSION) .

mysql:
	docker pull mysql

busybox:
	docker pull busybox

shared:
	cd cachelog; \
	docker build -t atamos/shared:$(VERSION) .
