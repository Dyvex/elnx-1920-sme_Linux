#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

configure

# Fix for error "INIT: Id "TO" respawning too fast: disabled for 5 minutes"
delete system console device ttyS0

#
# Basic settings
#
set system host-name 'router'


#domain name voor DNS zetten


#
# IP settings + interface eth0 en eth1 configureren

#set interfaces ethernet eth0 address dhcp
#set interfaces ethernet eth0 description "WAN"
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

# Make configuration changes persistent
commit
save

# Fix permissions on configuration
sudo chown -R root:vyattacfg /opt/vyatta/config/active

# vim: set ft=sh
