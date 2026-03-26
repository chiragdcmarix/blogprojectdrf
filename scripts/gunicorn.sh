#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo cp gunicorn/gunicorn.socket /etc/systemd/system/
sudo cp gunicorn/gunicorn.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn