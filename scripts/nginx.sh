#!/usr/bin/env bash
set -e

cd /home/ubuntu/blogprojectdrf

sudo cp nginx/nginx.conf /etc/nginx/sites-available/

sudo ln -sf /etc/nginx/sites-available/nginx.conf \
/etc/nginx/sites-enabled/nginx.conf

sudo rm -f /etc/nginx/sites-enabled/default

sudo usermod -a -G ubuntu www-data

sudo nginx -t
sudo systemctl restart nginx