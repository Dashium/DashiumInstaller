#!/bin/bash

git pull

current=$(pwd)

cp `$current/setup/Dashium.service` /etc/systemd/system/Dashium.service

systemctl enable /etc/systemd/system/Dashium.service

mkdir DashiumOS
cd DashiumOS
git clone "https://github.com/Dashium/Dashium"
cd Dashium
npm run modules
npm setup