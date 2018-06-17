#!/bin/bash

# This install script is intended to install Conan.
#
# Environment variables:
# - CONAN_VERSION: the version to install

# Update your local package index
apt-get update

# Install PIP package
apt-get install -y python-pip

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Install Conan package
pip install conan==${CONAN_VERSION}.*

# Make sure conan is working properly
conan
