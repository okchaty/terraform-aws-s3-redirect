#
# See ./CONTRIBUTING.rst
#

OS := $(shell uname)
.PHONY: help
.DEFAULT_GOAL := help

PROJECT=terraform-module-aws-s3-redirect

PYTHON_VERSION=3.6.4
PYENV_NAME="${PROJECT}"

# Configuration.
SHELL := /bin/bash
ROOT_DIR=$(shell pwd)
MESSAGE:=🍺️
MESSAGE_HAPPY:="${MESSAGE} Happy Coding"
REQUIREMENTS_DIR=$(ROOT_DIR)/requirements
FILE_README:=$(ROOT_DIR)/README.rst

pip_install := pip install -r

include extras/make/*.mk

help:
	@echo '${MESSAGE} Makefile for ${PROJECT}'
	@echo ''
	@echo 'Usage:'
	@echo '    environment               create environment with pyenv'
	@echo '    clean                     remove files of build'
	@echo '    setup                     install requirements'
	@echo ''

clean:
	@echo "$(TAG)"Cleaning up"$(END)"
ifneq (Darwin,$(OS))
	@sudo rm -rf .tox *.egg dist build .coverage .pytest_cache
	@sudo rm -rf docs/build
	@sudo find . -name '__pycache__' -delete -print -o -name '*.pyc' -delete -print -o -name '*.tmp' -delete -print
else
	@rm -rf .tox *.egg dist build .coverage .pytest_cache
	@rm -rf docs/build
	@find . -name '__pycache__' -delete -print -o -name '*.pyc' -delete -print -o -name '*.tmp' -delete -print
endif
	@echo

setup: clean
	$(pip_install) ${REQUIREMENTS_DIR}/setup.txt
	pre-commit install
	cp -rf .hooks/prepare-commit-msg .git/hooks/

environment: clean
	@if [ -e "$(HOME)/.pyenv" ]; then \
		eval "$(pyenv init -)"; \
		eval "$(pyenv virtualenv-init -)"; \
	fi
	pyenv virtualenv ${PYTHON_VERSION} ${PYENV_NAME} >> /dev/null 2>&1 || echo $(MESSAGE_HAPPY)
	pyenv activate ${PYENV_NAME} >> /dev/null 2>&1 || echo $(MESSAGE_HAPPY)
