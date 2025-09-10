TOP_DIR := $(shell pwd)
# each tag change this
ENV_DIST_VERSION := v1.0.0

ROOT_NAME ?= dartlang_playground

ENV_ROOT_TEST_PATH ?= test

.PHONY: env
env:
	dart --version

.PHONY: pub.get
pub.get:
	@dart pub get

.PHONY: pub.upgrade
pub.upgrade:
	@dart pub upgrade

.PHONY: init
init: pub.get
	@echo "init project success"

.PHONY: build.clean
build.clean:
	@dart run build_runner clean

.PHONY: build
build:
	@dart run build_runner build

.PHONY: analyze
analyze:
	@dart analyze

.PHONY: test
test:
	@echo "=> start test"
	@dart test -r expanded --file-reporter json:reports/tests.json

.PHONY: test.coverage
test.coverage:
	@find ${ENV_ROOT_TEST_PATH} -name "*_test.dart" | xargs dart run test -r expanded --coverage coverage

.PHONY: test.platform
test.platform:
	@find ${ENV_ROOT_TEST_PATH} -name "*_test.dart" | xargs dart run test -r expanded -p "chrome,vm"

.PHONY: ci
ci: analyze test

.PHONY: helpProjectRoot
helpProjectRoot:
	@echo "Help: Project root Makefile"
	@echo "-- now build name: $(ROOT_NAME) version: $(ENV_DIST_VERSION)"
	@echo ""
	@echo "~> make env                ~> see now project env"
	@echo "~> make init               ~> init project for build"
	@echo "~> make build              ~> build project for must build"
	@echo "~> make test               ~> run test"
	@echo "~> make test.coverage      ~> run test coverage"
	@echo "~> make test.platform      ~> run test at platform"

.PHONY: help
help: helpProjectRoot
	@echo "more info see makefile"