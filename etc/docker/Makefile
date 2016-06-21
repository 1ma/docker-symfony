MAKEFILE_ABS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: dev
dev:
	cp -up $(MAKEFILE_ABS_DIR)dev/docker-compose.yml.dist $(MAKEFILE_ABS_DIR)../../docker-compose.yml
