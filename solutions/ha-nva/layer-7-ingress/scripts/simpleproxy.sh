#!/bin/bash
echo simpleproxy.sh was run at $(date)
if hash zypper; then
  zypper install -y python3-pip screen
else
  yum install -y python3-pip screen
  firewall-cmd --zone=public --add-port=80/tcp --permanent
  firewall-cmd --reload
fi
python3 -m pip install proxy.py
/usr/bin/screen -dmS simple-proxy proxy --enable-web-server --plugins proxy.plugin.RedirectToCustomServerPlugin
