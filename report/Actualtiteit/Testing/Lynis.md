# Lynis testen en toepassen
  1. Eens Lynis geinstalleerd is kan je gaan kijken **als root gebruiker** in /opt/lynis of alles correct geconfigureerd is.
  2. Om lynis te gebruiken hoef je je enkel aan het volgend patroon te houden: `lynis command [options]`
      ```
      
      Command:

      audit
          audit system                  : Perform local security scan
          audit system remote <host>    : Remote security scan
          audit dockerfile <file>       : Analyze Dockerfile

      show
          show                          : Show all commands
          show version                  : Show Lynis version
          show help                     : Show help

      update
          update info                   : Show update details


      Options:

      Alternative system audit modes
      --forensics                       : Perform forensics on a running or mounted system
      --pentest                         : Non-privileged, show points of interest for pentesting

      Layout options
      --no-colors                       : Don't use colors in output
      --quiet (-q)                      : No output
      --reverse-colors                  : Optimize color display for light backgrounds

      Misc options
      --debug                           : Debug logging to screen
      --no-log                          : Don't create a log file
      --profile <profile>               : Scan the system with the given profile file
      --view-manpage (--man)            : View man page
      --verbose                         : Show more details on screen
      --version (-V)                    : Display version number and quit
      --wait                            : Wait between a set of tests

      Enterprise options
      --plugindir <path>                : Define path of available plugins
      --upload                          : Upload data to central node

      More options available. Run './lynis show options', or use the man page.

      ```
## Test op eigen server
  3. Om nu eens de test op eigen systeem uit te voeren deed ik volgend commando: `lynis audit system` en kreeg ik volgende uitvoer:
 ```
      
[+] Kernel
------------------------------------

  [WARNING]: Test BOOT-5263 had a long execution: 151.111187 seconds

  - Checking default runlevel                                 [ runlevel 3 ]
  - Checking CPU support (NX/PAE)
    CPU support: PAE and/or NoeXecute supported               [ FOUND ]
  - Checking kernel version and release                       [ DONE ]
  - Checking kernel type                                      [ DONE ]
  - Checking loaded kernel modules                            [ DONE ]
      Found 85 active modules
  - Checking Linux kernel configuration file                  [ FOUND ]
  - Checking default I/O kernel scheduler                     [ FOUND ]
  - Checking core dumps configuration
    - configuration in systemd conf files                     [ DEFAULT ]
    - configuration in etc/profile                            [ DEFAULT ]
    - 'hard' configuration in security/limits.conf            [ DEFAULT ]
    - 'soft' configuration in security/limits.conf            [ DEFAULT ]
    - Checking setuid core dumps configuration                [ DISABLED ]
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected
/opt/lynis/include/tests_kernel: line 668: [: argument expected

=================================================================

  Exception found!

  Function/test:  [KRNL-5830:4]
  Message:        Could not find the kernel version

  Help improving the Lynis community with your feedback!

  Steps:
  - Ensure you are running the latest version (/usr/bin/lynis update check)
  - If so, create a GitHub issue at https://github.com/CISOfy/lynis
  - Include relevant parts of the log file or configuration file

  Thanks!

=================================================================

  - Check if reboot is needed                                 [ UNKNOWN ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Memory and Processes
------------------------------------

  [WARNING]: Test KRNL-5830 had a long execution: 250.926220 seconds

  - Checking /proc/meminfo                                    [ FOUND ]
  - Searching for dead/zombie processes                       [ NOT FOUND ]
  - Searching for IO waiting processes                        [ NOT FOUND ]
  - Search prelink tooling                                    [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Users, Groups and Authentication
------------------------------------
  - Administrator accounts                                    [ OK ]
  - Unique UIDs                                               [ OK ]
  - Consistency of group files (grpck)                        [ OK ]
  - Unique group IDs                                          [ OK ]
  - Unique group names                                        [ OK ]
  - Password file consistency                                 [ OK ]
  - Query system users (non daemons)                          [ DONE ]
  - NIS+ authentication support                               [ NOT ENABLED ]
  - NIS authentication support                                [ NOT ENABLED ]
  - Sudoers file(s)                                           [ FOUND ]
    - Permissions for directory: /etc/sudoers.d               [ OK ]
    - Permissions for: /etc/sudoers                           [ OK ]
    - Permissions for: /etc/sudoers.d/vagrant                 [ OK ]
    - Permissions for: /etc/sudoers.d/wheel                   [ OK ]
  - PAM password strength tools                               [ OK ]
  - PAM configuration file (pam.conf)                         [ NOT FOUND ]
  - PAM configuration files (pam.d)                           [ FOUND ]
  - PAM modules                                               [ FOUND ]
  - LDAP module in PAM                                        [ NOT FOUND ]
  - Accounts without expire date                              [ SUGGESTION ]
  - Accounts without password                                 [ OK ]
  - Checking user password aging (minimum)                    [ DISABLED ]
  - User password aging (maximum)                             [ DISABLED ]
  - Checking expired passwords                                [ OK ]
  - Checking Linux single user mode authentication            [ OK ]
  - Determining default umask
    - umask (/etc/profile and /etc/profile.d)                 [ SUGGESTION ]
    - umask (/etc/login.defs)                                 [ OK ]
    - umask (/etc/init.d/functions)                           [ SUGGESTION ]
  - LDAP authentication support                               [ NOT ENABLED ]
  - Logging failed login attempts                             [ DISABLED ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Shells
------------------------------------
  - Checking shells from /etc/shells
    Result: found 4 shells (valid shells: 4).
    - Session timeout settings/tools                          [ NONE ]
  - Checking default umask values
    - Checking default umask in /etc/bashrc                   [ WEAK ]
    - Checking default umask in /etc/csh.cshrc                [ WEAK ]
    - Checking default umask in /etc/profile                  [ WEAK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] File systems
------------------------------------
  - Checking mount points
    - Checking /home mount point                              [ OK ]
    - Checking /tmp mount point                               [ SUGGESTION ]
    - Checking /var mount point                               [ SUGGESTION ]
  - Checking LVM volume groups                                [ FOUND ]
    - Checking LVM volumes                                    [ FOUND ]
  - Query swap partitions (fstab)                             [ OK ]
  - Testing swap partitions                                   [ OK ]
  - Testing /proc mount (hidepid)                             [ SUGGESTION ]
  - Checking for old files in /tmp                            [ OK ]
  - Checking /tmp sticky bit                                  [ OK ]
  - Checking /var/tmp sticky bit                              [ OK ]
  - ACL support root file system                              [ ENABLED ]
  - Mount options of /                                        [ OK ]
  - Mount options of /boot                                    [ DEFAULT ]
  - Mount options of /home                                    [ DEFAULT ]
  - Disable kernel support of some filesystems
    - Discovered kernel modules: cramfs squashfs udf

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] USB Devices
------------------------------------
  - Checking usb-storage driver (modprobe config)             [ NOT DISABLED ]
  - Checking USB devices authorization                        [ ENABLED ]
  - Checking USBGuard                                         [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Storage
------------------------------------
  - Checking firewire ohci driver (modprobe config)           [ NOT DISABLED ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] NFS
------------------------------------
  - Query rpc registered programs                             [ DONE ]
  - Query NFS versions                                        [ DONE ]
  - Query NFS protocols                                       [ DONE ]
  - Check running NFS daemon                                  [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Name services
------------------------------------
  - Checking search domains                                   [ FOUND ]
  - Checking /etc/resolv.conf options                         [ FOUND ]
  - Searching DNS domain name                                 [ UNKNOWN ]
  - Checking /etc/hosts
    - Duplicate entries in hosts file                         [ NONE ]
    - Presence of configured hostname in /etc/hosts           [ FOUND ]
    - Hostname mapped to localhost                            [ NOT FOUND ]
    - Localhost mapping to IP address                         [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Ports and packages
------------------------------------
  - Searching package managers
    - Searching RPM package manager                           [ FOUND ]
      - Querying RPM package manager


  - YUM package management consistency                        [ OK ]
  - Checking package database duplicates                      [ OK ]
  - Checking package database for problems                    [ OK ]
  - Checking missing security packages                        [ OK ]
  - Checking GPG checks (yum.conf)                            [ DISABLED ]
  - Checking package audit tool                               [ INSTALLED ]
    Found: yum-security
  - Toolkit for automatic upgrades

[ Press [ENTER] to continue, or [CTRL]+C to stop ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Networking
------------------------------------
  - Checking IPv6 configuration                               [ ENABLED ]
      Configuration method                                    [ AUTO ]
      IPv6 only                                               [ NO ]
  - Checking configured nameservers
    - Testing nameservers
        Nameserver: 10.0.2.3                                  [ OK ]
    - Minimal of 2 responsive nameservers                     [ WARNING ]
  - Checking default gateway                                  [ DONE ]
  - Getting listening ports (TCP/UDP)                         [ DONE ]
  - Checking promiscuous interfaces                           [ OK ]
  - Checking waiting connections                              [ OK ]
  - Checking status DHCP client                               [ RUNNING ]
  - Checking for ARP monitoring software                      [ NOT FOUND ]
  - Uncommon network protocols                                [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Printers and Spools
------------------------------------
  - Checking cups daemon                                      [ NOT FOUND ]
  - Checking lp daemon                                        [ NOT RUNNING ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: e-mail and messaging
------------------------------------

  [WARNING]: Test PRNT-2420 had a long execution: 25.871481 seconds

  - Postfix status                                            [ RUNNING ]
    - Postfix configuration                                   [ FOUND ]
      - Postfix banner                                        [ WARNING ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: firewalls
------------------------------------
  - Checking iptables kernel module                           [ FOUND ]
    - Checking iptables policies of chains                    [ FOUND ]
      - Checking chain INPUT (table:
filter, policy ACCEPT)  [ ACCEPT ]
    - Checking for empty ruleset                              [ OK ]
    - Checking for unused rules                               [ FOUND ]
  - Checking host based firewall                              [ ACTIVE ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: webserver
------------------------------------
  - Checking Apache (binary /usr/sbin/httpd)                  [ FOUND ]
      Info: Configuration file found (/etc/httpd/conf/httpd.conf)
      Info: No virtual hosts found
    * Loadable modules                                        [ FOUND (101) ]
        - Found 101 loadable modules
          mod_evasive: anti-DoS/brute force                   [ NOT FOUND ]
          mod_reqtimeout/mod_qos                              [ FOUND ]
          ModSecurity: web application firewall               [ NOT FOUND ]
  - Checking nginx                                            [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] SSH Support
------------------------------------
  - Checking running SSH daemon                               [ FOUND ]
    - Searching SSH configuration                             [ FOUND ]
    - OpenSSH option: AllowTcpForwarding                      [ SUGGESTION ]
    - OpenSSH option: ClientAliveCountMax                     [ SUGGESTION ]
    - OpenSSH option: ClientAliveInterval                     [ OK ]
    - OpenSSH option: Compression                             [ SUGGESTION ]
    - OpenSSH option: FingerprintHash                         [ OK ]
    - OpenSSH option: GatewayPorts                            [ OK ]
    - OpenSSH option: IgnoreRhosts                            [ OK ]
    - OpenSSH option: LoginGraceTime                          [ OK ]
    - OpenSSH option: LogLevel                                [ SUGGESTION ]
    - OpenSSH option: MaxAuthTries                            [ SUGGESTION ]
    - OpenSSH option: MaxSessions                             [ SUGGESTION ]
    - OpenSSH option: PermitRootLogin                         [ SUGGESTION ]
    - OpenSSH option: PermitUserEnvironment                   [ OK ]
    - OpenSSH option: PermitTunnel                            [ OK ]
    - OpenSSH option: Port                                    [ SUGGESTION ]
    - OpenSSH option: PrintLastLog                            [ OK ]
    - OpenSSH option: StrictModes                             [ OK ]
    - OpenSSH option: TCPKeepAlive                            [ SUGGESTION ]
    - OpenSSH option: UseDNS                                  [ OK ]
    - OpenSSH option: VerifyReverseMapping                    [ NOT FOUND ]
    - OpenSSH option: X11Forwarding                           [ SUGGESTION ]
    - OpenSSH option: AllowAgentForwarding                    [ SUGGESTION ]
    - OpenSSH option: UsePrivilegeSeparation                  [ OK ]
    - OpenSSH option: AllowUsers                              [ NOT FOUND ]
    - OpenSSH option: AllowGroups                             [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] SNMP Support
------------------------------------
  - Checking running SNMP daemon                              [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Databases
------------------------------------
  - MySQL process status                                      [ FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] LDAP Services
------------------------------------
  - Checking OpenLDAP instance                                [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] PHP
------------------------------------
  - Checking PHP                                              [ FOUND ]
    - Checking PHP disabled functions                         [ FOUND ]
    - Checking expose_php option                              [ ON ]
    - Checking enable_dl option                               [ OFF ]
    - Checking allow_url_fopen option                         [ ON ]
    - Checking allow_url_include option                       [ OFF ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Squid Support
------------------------------------
  - Checking running Squid daemon                             [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Logging and files
------------------------------------
  - Checking for a running log daemon                         [ OK ]
    - Checking Syslog-NG status                               [ NOT FOUND ]
    - Checking systemd journal status                         [ FOUND ]
    - Checking Metalog status                                 [ NOT FOUND ]
    - Checking RSyslog status                                 [ FOUND ]
    - Checking RFC 3195 daemon status                         [ NOT FOUND ]
    - Checking minilogd instances                             [ NOT FOUND ]
  - Checking logrotate presence                               [ OK ]
  - Checking remote logging                                   [ NOT ENABLED ]
  - Checking log directories (static list)                    [ DONE ]
  - Checking open log files                                   [ DONE ]
  - Checking deleted files in use                             [ FILES FOUND ]

  [ Press [ENTER] to continue, or [CTRL]+C to stop ]

      
 ```
 
