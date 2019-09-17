#!/usr/bin/env bash
apt-get update
apt-get install -y haproxy
echo "ENABLED=1" >> /etc/default/haproxy
mv /etc/haproxy/haproxy.cfg{,.original}
cp /var/own_hap_config/haproxy.cfg /etc/haproxy/
service haproxy start
service haproxy restart
