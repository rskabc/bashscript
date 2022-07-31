#!/bin/bash
apt update
apt install -y snmp snmpd 
mv /etc/snmp/snmpd.conf /etc/snmp/snmpd.bak
echo "rocommunity public/nsysLocation ID, Jakarta/nsysContact Reski.abuchaer@gmail.com" > /etc/snmp/snmpd.conf

/etc/init.d/snmpd restart
snmpwalk -v 1 -c public -O e localhost
