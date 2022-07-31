#!/bin/bash
apt update
apt install snmp snmpd
mv /etc/snmp/snmpd.conf /etc/snmp/snmpd.bak
echo "rocommunity public" > /etc/snmp/snmpd.conf

/etc/init.d/snmpd restart
snmpwalk -v 1 -c public -O e localhost
