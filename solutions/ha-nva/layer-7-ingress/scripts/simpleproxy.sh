#!/bin/bash
echo simpleproxy.sh was run at $(date)
yum install httpd -y
echo """<VirtualHost *:80>
  # Logging
  # Reverse proxy configuration
  <Location />
    ProxyPass http://10.0.1.4:80/
    ProxyPassReverse http://10.0.1.4:80/
  </Location>
</VirtualHost>
""" > /etc/httpd/conf.d/reverse.conf
systemctl enable httpd && systemctl start httpd
