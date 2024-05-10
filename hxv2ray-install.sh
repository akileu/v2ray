#!/bin/bash
apt-get install -y curl 
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
wget https://raw.githubusercontent.com/akileu/v2ray/main/server_config.json -O -> /usr/local/etc/v2ray/config.json
service v2ray restart
apt-get -y install nginx
wget https://raw.githubusercontent.com/akileu/v2ray/main/nginx.conf -O -> /etc/nginx/nginx.conf
nginx -s reload
