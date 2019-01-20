#!/bin/bash

# Install Required Packages on Your Unix/Linux System
PREFIX=${PREFIX:-${HOME}/local}

PYTHON_PACKAGES=${PYTHON_PACKAGES:-"awscli aws-shell boto boto3 bokeh paramiko \
shapely bytebuffer jmespath-terminal ansible flexx docker docker-py docker-compose"}

# Install Python Packages
echo "Installing Python Packages: ${PYTHON_PACKAGES}..."
sudo pip3 install -U ${PYTHON_PACKAGES}