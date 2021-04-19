#! /bin/sh

# exit if a command fails
set -e

apk update

# install pg_dump
apk add postgresql

# install s3 tools
apk add python3 py3-pip
pip3 install awscli six
apk del py3-pip

# cleanup
rm -rf /var/cache/apk/*
