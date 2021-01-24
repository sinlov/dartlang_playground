.PHONY: test check clean build dist all
TOP_DIR := $(shell pwd)
# each tag change this
ENV_DIST_VERSION := v1.0.0

ROOT_NAME ?= dartlang_playground

ENV_ROOT_TEST_PATH ?= test

env:
	dart --version

pubGet:
	@dart pub get

pubUpgrade:
	@dart pub upgrade

init: pubGet
	@echo "init project success"

build:
	@dart run build_runner build

analyze:
	@dart analyze

test: analyze
	@echo "=> start test"
	@dart test -r expanded --file-reporter json:reports/tests.json

testCoverage:
	@find ${ENV_ROOT_TEST_PATH} -name "*_test.dart" | xargs dart run test -r expanded --coverage coverage

testPlatform:
	@find ${ENV_ROOT_TEST_PATH} -name "*_test.dart" | xargs dart run test -r expanded -p "chrome,vm"

helpProjectRoot:
	@echo "Help: Project root Makefile"
	@echo "-- now build name: $(ROOT_NAME) version: $(ENV_DIST_VERSION)"
	@echo ""
	@echo "~> make env                ~> see now project env"
	@echo "~> make init               ~> init project for build"
	@echo "~> make build              ~> build project for must build"
	@echo "~> make test               ~> run test"
	@echo "~> make testCoverage       ~> run test coverage"
	@echo "~> make testPlatform       ~> run test at platform"

help: helpProjectRoot
	@echo "more info see makefile"