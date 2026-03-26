#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo chown -R ubuntu:ubuntu .

python3 -m virtualenv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt