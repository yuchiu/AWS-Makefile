#
# Makefile for AWS Infrastructure setup & configuration
#

# Configure variables
PREFIX := $(HOME)/local

# Don't modify unless you know what you are doing
PATH := $(PREFIX)/bin:$(PATH)

all: help
help:
	@echo "usage: make <action>"
	@echo "Available actions are:"
	@echo "  prepare      install prerequisite software packages"
	@echo "  configure    configure AWS environment"
	@echo "  version      show tools version"

.PHONY: prepare
prepare:
	@cd scripts/ && PREFIX=$(PREFIX) ./install_packages.sh

.PHONY: configure
configure:
	@cd scripts/ && ./configure.sh

version:
	@python3 --version
	@git --version
	@make -version | head -n 1
	@ansible --version | head -n 1
	@aws --version
# @terraform version 
# @packer version 