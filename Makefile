.DEFAULT_GOAL := build
SHELL := /bin/bash

.PHONY: clean
clean:
	@-rm -rf RPMS/

.PHONY: build
build: centos7

.PHONY: docker-build
docker-build:
	@docker-compose build

.PHONY: centos5
centos5:
	@docker-compose build centos5
	@docker-compose run --rm centos5

.PHONY: centos6
centos6:
	@docker-compose build centos6
	@docker-compose run --rm centos6

.PHONY: centos7
centos7:
	@docker-compose build centos7
	@docker-compose run --rm centos7

