#!/bin/sh
#apt-get update
#apt-get install iptables
#apt-get install iptables-persistent
iptables -V
iptables -I INPUT -p tcp -s 192.168.10.202 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
#iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 1912 -j ACCEPT
iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
iptables -A INPUT -p tcp --dport 5432 -j ACCEPT
iptables -A INPUT -p tcp -s 192.168.10.0/24 -j DROP
iptables -L
#iptables-save > /etc/iptables/rules.v4
#systemctl enable iptables-persistent
#service iptables-persistent start
