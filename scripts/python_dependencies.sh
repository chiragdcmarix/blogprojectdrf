#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo apt-get update
sudo apt-get install -y python3.10 python3.10-venv python3.10-dev build-essential

rm -rf venv
python3.10 -m venv venv

source venv/bin/activate

pip install --upgrade pip setuptools wheel
pip install -r requirements.txt