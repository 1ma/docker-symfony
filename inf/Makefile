MAKEFILE_ABS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: dev
dev:
	cp -up $(MAKEFILE_ABS_DIR)dev/docker-compose.yml $(MAKEFILE_ABS_DIR)../docker-compose.yml

.PHONY: pro
pro: clean
	rsync -arv --files-from=$(MAKEFILE_ABS_DIR)pro/app/include                   $(MAKEFILE_ABS_DIR)../ $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com
	rsync -arv --files-from=$(MAKEFILE_ABS_DIR)pro/web/include --exclude='*.php' $(MAKEFILE_ABS_DIR)../ $(MAKEFILE_ABS_DIR)pro/web/docker-symfony.com
	cp $(MAKEFILE_ABS_DIR)pro/app/parameters.yml.pro $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com/app/config/parameters.yml
	docker run --rm -t -e SYMFONY_ENV=prod -v $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com:/var/www/docker-symfony.com -w /var/www/docker-symfony.com 1maa/php-cli:7.0 composer install --no-dev --no-scripts --optimize-autoloader
	docker run --rm -t -e SYMFONY_ENV=prod -v $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com:/var/www/docker-symfony.com -v $(MAKEFILE_ABS_DIR)pro/web/docker-symfony.com/web:/var/www/docker-symfony.com/web -w /var/www/docker-symfony.com 1maa/php-cli:7.0 composer run-script --no-dev docker-build-prod
	sudo rm -rf $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com/var/cache/*
	docker build -t docker-symfony-app:$(shell date +%s) $(MAKEFILE_ABS_DIR)pro/app
	docker build -t docker-symfony-web:$(shell date +%s) $(MAKEFILE_ABS_DIR)pro/web

.PHONY: clean
clean:
	sudo rm -rf $(MAKEFILE_ABS_DIR)pro/web/docker-symfony.com
	sudo rm -rf $(MAKEFILE_ABS_DIR)pro/app/docker-symfony.com
