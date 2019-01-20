#
# Makefile for AWS Infrastructure setup
#

PREFIX := $(HOME)/local

PATH := $(PREFIX)/bin:$(PATH)

all: help
help:
	@echo "usage: make <action>"
	@echo "Available actions are:"
	@echo "  prepare      install prerequisite software packages"

.PHONY: prepare
prepare:
	@cd scripts/ && PREFIX=$(PREFIX) ./install_packages.sh