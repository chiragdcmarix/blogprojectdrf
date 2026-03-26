#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo apt-get update
sudo apt-get install -y python3-venv python3-dev build-essential libyaml-dev

rm -rf venv
python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip setuptools wheel

pip install -r requirements.txt

# force fix for python 3.12
pip install --upgrade --force-reinstall \
ruamel.yaml==0.18.6 \
ruamel.yaml.clib==0.2.8