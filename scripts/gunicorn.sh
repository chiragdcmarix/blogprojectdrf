#!/usr/bin/bash
sudo cp /root/blogprojectdrfgunicorn/gunicorn.socket  /etc/systemd/system/gunicorn.socket
sudo cp /root/blogprojectdrf/gunicorn/gunicorn.service  /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service
