#!/bin/bash
set -euo pipefail

sudo apt update -y
sudo apt install -y tcptrace 
sudo apt install -y iptraf 

mkdir -p /usr/stairway/tohv
touch /usr/stairway/tohv/config.bat

cp -f simpleService.sh /etc/
chmod +x /etc/simpleService.sh

cp -f simpleService.service /etc/systemd/system/
cp -f simpleService.timer /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now simpleService.timer
sudo systemctl restart simpleService.service