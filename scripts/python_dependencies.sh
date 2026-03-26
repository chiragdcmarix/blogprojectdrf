#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo apt-get update
sudo apt-get install -y build-essential python3-dev libyaml-dev

rm -rf venv
python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip setuptools wheel

# fix for python 3.12
pip install "ruamel.yaml.clib==0.2.8"
pip install "ruamel.yaml==0.18.6"

pip install -r requirements.txt