.DEFAULT_GOAL := build
SHELL := /bin/bash

.PHONY: clean
clean:
	@-rm -rf RPMS/

.PHONY: build
build: centos6

.PHONY: centos6
centos6:
	@docker-compose run --rm centos6

