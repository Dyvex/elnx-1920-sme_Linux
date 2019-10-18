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

#set interfaces ethernet eth0 address dhcp
#set interfaces ethernet eth0 description "WAN"
set interfaces ethernet eth1 address 192.0.2.254/24
set interfaces ethernet eth1 description "DMZ"


# TODO

#
# Network Address Translation
#

# TODO

#
# Time
set system time-zone Europe/Brussels

#
# Domain Name Service
# dns forwarding
set service dns forwarding system
set service dns forwarding domain avalon.lan server 192.0.2.10

# eth1 als input poort voor browsing
set service dns forwarding listen-on 'eth1'

# Make configuration changes persistent
commit
save

# Fix permissions on configuration
sudo chown -R root:vyattacfg /opt/vyatta/config/active

# vim: set ft=sh
