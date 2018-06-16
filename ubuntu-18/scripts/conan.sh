#!/bin/bash

# This install script is intended to install Conan.
#
# Environment variables:
# - CONAN_VERSION: the version to install

# Resolve the conan file to download
CONAN_FILE=conan-ubuntu-64_${CONAN_VERSION//./_}.deb
CONAN_URL=https://github.com/conan-io/conan/releases/download/${CONAN_VERSION}/${CONAN_FILE}

# Download the ubuntu/debian package
wget ${CONAN_URL}

# Install the ubuntu/debian package
dpkg -i ${CONAN_FILE}

# Make sure conan is working properly
conan
