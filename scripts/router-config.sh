#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

configure

# Fix for error "INIT: Id "TO" respawning too fast: disabled for 5 minutes"
delete system console device ttyS0

#
# Basic settings
#
set system host-name 'router'
set service ssh port '22'

#
# IP settings + interface eth0 en eth1 configureren
set interfaces ethernet eth0 address dhcp
set interfaces ethernet eth0 description "WAN link"
set interfaces ethernet eth1 address 192.0.2.254/24
set interfaces ethernet eth1 description "DMZ"
set interfaces ethernet eth2 address 172.16.255.254/16
set interfaces ethernet eth2 description "internal"
# Network Address Translation
set nat source rule 10 description "External"
set nat source rule 10 outbound-interface 'eth0'
set nat source rule 10 source address 172.16.0.0/16
set nat source rule 10 translation address 'masquerade'
set nat source rule 20 description "internal naar DMZ"
set nat source rule 20 outbound-interface 'eth1'
set nat source rule 20 source address 172.16.0.0/16
set nat source rule 20 translation address 'masquerade'
# Time
set system ntp server 'be.pool.ntp.org'
set system time-zone Europe/Brussels
# Domain Name Service
# dns forwarding
# dns van systeem aanzetten
set service dns forwarding system
# dns voor resolving domein
set service dns forwarding domain avalon.lan server 172.16.192.1
set service dns forwarding domain avalon.lan server 172.16.192.2
set service dns forwarding name-server 10.0.2.3
set service dns forwarding listen-on 'eth1'
set service dns forwarding listen-on 'eth2'
# Make configuration changes persistent
commit
save
# Fix permissions on configuration
sudo chown -R root:vyattacfg /opt/vyatta/config/active
# vim: set ft=sh
