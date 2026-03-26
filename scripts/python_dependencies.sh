#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo apt-get update
sudo apt-get install -y python3-venv python3-dev build-essential libyaml-dev

rm -rf venv
python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip setuptools wheel

# fix python 3.12 compatibility
pip install "ruamel.yaml.clib==0.2.8"
pip install "ruamel.yaml==0.18.6"

pip install -r requirements.txt