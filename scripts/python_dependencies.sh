#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo chown -R ubuntu:ubuntu .

sudo apt-get update

sudo apt-get install -y \
python3-dev \
build-essential \
libjpeg-dev \
zlib1g-dev \
libfreetype6-dev \
liblcms2-dev \
libwebp-dev \
libtiff-dev \
tk-dev \
gcc

python3 -m virtualenv venv
source venv/bin/activate

pip install --upgrade pip wheel setuptools
pip install -r requirements.txt