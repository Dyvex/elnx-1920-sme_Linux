# Lynis testen en toepassen
  1. Eens Lynis geinstalleerd is kan je gaan kijken **als root gebruiker** in /opt/lynis of alles correct geconfigureerd is.
    * Sidenote: Het is belangrijk dat je lynis uitvoert als je in /opt/lynis zit en dan `./lynis audit system` doet
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
 [ Lynis 2.7.5 ]

################################################################################
  Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
  welcome to redistribute it under the terms of the GNU General Public License.
  See the LICENSE file for details about using this software.

  2007-2019, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)
################################################################################


[+] Initializing program
------------------------------------
/opt/lynis/include/functions: line 435: [: -eq: unary operator expected
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected
  - Detecting OS...                                           [ DONE ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

  [WARNING]: Your profile contains old-style configuration entries. See log file for more details and how to convert these entries

  - Checking profiles...                                      [ DONE ]

  ---------------------------------------------------
  Program version:           2.7.5
  Operating system:          Linux
  Operating system name:     CentOS Linux
  Operating system version:  7
  Kernel version:            3.10.0
  Hardware platform:         x86_64
  Hostname:                  pu001
  ---------------------------------------------------
  Profiles:                  /etc/lynis/default.prf /etc/lynis/custom.prf
  Log file:                  /var/log/lynis.log
  Report file:               /var/log/lynis-report.dat
  Report version:            1.0
  Plugin directory:          /usr/share/lynis/plugins
  ---------------------------------------------------
  Auditor:                   [Not Specified]
  Language:                  en
  Test category:             all
  Test group:                all
  ---------------------------------------------------
  - Program update status...                                  [ NO UPDATE ]

      ===============================================================================
        Lynis update available
      ===============================================================================

        Current version is more than 4 months old

        Current version : 275   Latest version : 275

        Please update to the latest version.
        New releases include additional features, bug fixes, tests, and baselines.

        Download the latest version:

        Packages (DEB/RPM) -  https://packages.cisofy.com
        Website (TAR)      -  https://cisofy.com/downloads/
        GitHub (source)    -  https://github.com/CISOfy/lynis

      ===============================================================================

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] System Tools
------------------------------------
  - Scanning available tools...
  - Checking system binaries...

[+] Plugins (phase 1)
------------------------------------
 Note: plugins have more extensive tests and may take several minutes to complete

  - Plugins enabled                                           [ NONE ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Boot and services
------------------------------------
  - Service Manager                                           [ systemd ]
  - Checking UEFI boot                                        [ DISABLED ]
  - Checking presence GRUB2                                   [ FOUND ]
    - Checking for password protection                        [ OK ]
  - Check running services (systemctl)                        [ DONE ]
        Result: found 21 running services
  - Check enabled services at boot (systemctl)                [ DONE ]
        Result: found 38 enabled services
  - Check startup files (permissions)                         [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

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

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Insecure services
------------------------------------

  [WARNING]: Test LOGG-2192 had a long execution: 89.894531 seconds

  - Installed inetd package                                   [ NOT FOUND ]
  - Installed xinetd package                                  [ OK ]
    - xinetd status                                           [ NOT ACTIVE ]
  - Installed rsh client package                              [ OK ]
  - Installed rsh server package                              [ OK ]
  - Installed telnet client package                           [ OK ]
  - Installed telnet server package                           [ NOT FOUND ]
  - Checking NIS client installation                          [ OK ]
  - Checking NIS server installation                          [ OK ]
  - Checking TFTP client installation                         [ OK ]
  - Checking TFTP server installation                         [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Banners and identification
------------------------------------
  - /etc/issue                                                [ FOUND ]
    - /etc/issue contents                                     [ WEAK ]
  - /etc/issue.net                                            [ FOUND ]
    - /etc/issue.net contents                                 [ WEAK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Scheduled tasks
------------------------------------
  - Checking crontab and cronjob files                        [ DONE ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Accounting
------------------------------------
  - Checking accounting information                           [ NOT FOUND ]
  - Checking sysstat accounting data                          [ NOT FOUND ]
  - Checking auditd                                           [ ENABLED ]
    - Checking audit rules                                    [ SUGGESTION ]
    - Checking audit configuration file                       [ OK ]
    - Checking auditd log file                                [ FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Time and Synchronization
------------------------------------
  - NTP daemon found: chronyd                                 [ FOUND ]
Warning: Ignoring the TZ variable. Reading the system's time zone setting only.

  - Checking for a running NTP daemon or client               [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Cryptography
------------------------------------

  - Checking for expired SSL certificates [0/6]               [ NONE ]
  - Kernel entropy is sufficient                              [ YES ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Virtualization
------------------------------------

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Containers
------------------------------------

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Security frameworks
------------------------------------
  - Checking presence AppArmor                                [ NOT FOUND ]
  - Checking presence SELinux                                 [ FOUND ]
    - Checking SELinux status                                 [ ENABLED ]
      - Checking current mode and config file                 [ OK ]
        Current SELinux mode: enforcing
  - Checking presence TOMOYO Linux                            [ NOT FOUND ]
  - Checking presence grsecurity                              [ NOT FOUND ]
  - Checking for implemented MAC framework                    [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: file integrity
------------------------------------
  - Checking file integrity tools
  - Checking presence integrity tool                          [ NOT FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: System tooling
------------------------------------
  - Checking automation tooling
    - Ansible artifact                                        [ FOUND ]
  - Automation tooling                                        [ FOUND ]
  - Checking for IDS/IPS tooling                              [ NONE ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Software: Malware
------------------------------------
  - Checking Rootkit Hunter                                   [ FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] File Permissions
------------------------------------
  - Starting file permissions check

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Home directories
------------------------------------
  - Permissions of home directories                           [ OK ]
  - Ownership of home directories                             [ OK ]
  - Checking shell history files                              [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]

/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Kernel Hardening
------------------------------------
  - Comparing sysctl key pairs with scan profile
    - fs.protected_hardlinks (exp: 1)                         [ OK ]
    - fs.protected_symlinks (exp: 1)                          [ OK ]
    - fs.suid_dumpable (exp: 0)                               [ OK ]
    - kernel.core_uses_pid (exp: 1)                           [ OK ]
    - kernel.ctrl-alt-del (exp: 0)                            [ OK ]
    - kernel.dmesg_restrict (exp: 1)                          [ DIFFERENT ]
    - kernel.kptr_restrict (exp: 2)                           [ DIFFERENT ]
    - kernel.randomize_va_space (exp: 2)                      [ OK ]
    - kernel.sysrq (exp: 0)                                   [ DIFFERENT ]

    - kernel.yama.ptrace_scope (exp: 1 2 3)                   [ DIFFERENT ]
    - net.ipv4.conf.all.accept_redirects (exp: 0)             [ DIFFERENT ]
    - net.ipv4.conf.all.accept_source_route (exp: 0)          [ OK ]
    - net.ipv4.conf.all.bootp_relay (exp: 0)                  [ OK ]
    - net.ipv4.conf.all.forwarding (exp: 0)                   [ OK ]
    - net.ipv4.conf.all.log_martians (exp: 1)                 [ DIFFERENT ]
    - net.ipv4.conf.all.mc_forwarding (exp: 0)                [ OK ]
    - net.ipv4.conf.all.proxy_arp (exp: 0)                    [ OK ]
    - net.ipv4.conf.all.rp_filter (exp: 1)                    [ OK ]
    - net.ipv4.conf.all.send_redirects (exp: 0)               [ DIFFERENT ]
    - net.ipv4.conf.default.accept_redirects (exp: 0)         [ DIFFERENT ]
    - net.ipv4.conf.default.accept_source_route (exp: 0)      [ OK ]
    - net.ipv4.conf.default.log_martians (exp: 1)             [ DIFFERENT ]
    - net.ipv4.icmp_echo_ignore_broadcasts (exp: 1)           [ OK ]
    - net.ipv4.icmp_ignore_bogus_error_responses (exp: 1)     [ OK ]
    - net.ipv4.tcp_syncookies (exp: 1)                        [ OK ]
    - net.ipv4.tcp_timestamps (exp: 0 1)                      [ OK ]
    - net.ipv6.conf.all.accept_redirects (exp: 0)             [ DIFFERENT ]
    - net.ipv6.conf.all.accept_source_route (exp: 0)          [ OK ]
    - net.ipv6.conf.default.accept_redirects (exp: 0)         [ DIFFERENT ]
    - net.ipv6.conf.default.accept_source_route (exp: 0)      [ OK ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

[+] Hardening
------------------------------------
    - Installed compiler(s)                                   [ FOUND ]
    - Installed malware scanner                               [ FOUND ]

[ Press [ENTER] to continue, or [CTRL]+C to stop ]


[+] Custom tests
------------------------------------
  - Running custom tests...                                   [ NONE ]

[+] Plugins (phase 2)
------------------------------------
/opt/lynis/include/functions: line 3033: [: -eq: unary operator expected

================================================================================

  -[ Lynis 2.7.5 Results ]-

  Warnings (3):
  ----------------------------
  ! No GPG signing option found in yum.conf [PKGS-7387]
      https://cisofy.com/lynis/controls/PKGS-7387/

  ! Couldn't find 2 responsive nameservers [NETW-2705]
      https://cisofy.com/lynis/controls/NETW-2705/

  ! Found some information disclosure in SMTP banner (OS or software name) [MAIL-8818]
      https://cisofy.com/lynis/controls/MAIL-8818/

  Suggestions (40):
  ----------------------------
  * This release is more than 4 months old. Consider upgrading [LYNIS]
      https://cisofy.com/lynis/controls/LYNIS/

  * If not required, consider explicit disabling of core dump in /etc/security/limits.conf file [KRNL-5820]
      https://cisofy.com/lynis/controls/KRNL-5820/

  * When possible set expire dates for all password protected accounts [AUTH-9282]
      https://cisofy.com/lynis/controls/AUTH-9282/

  * Configure minimum password age in /etc/login.defs [AUTH-9286]
      https://cisofy.com/lynis/controls/AUTH-9286/

  * Configure maximum password age in /etc/login.defs [AUTH-9286]
      https://cisofy.com/lynis/controls/AUTH-9286/

  * Default umask in /etc/profile or /etc/profile.d/custom.sh could be more strict (e.g. 027) [AUTH-9328]
      https://cisofy.com/lynis/controls/AUTH-9328/

  * To decrease the impact of a full /tmp file system, place /tmp on a separate partition [FILE-6310]
      https://cisofy.com/lynis/controls/FILE-6310/

  * To decrease the impact of a full /var file system, place /var on a separate partition [FILE-6310]
      https://cisofy.com/lynis/controls/FILE-6310/

  * Disable drivers like USB storage when not used, to prevent unauthorized storage or data theft [USB-1000]
      https://cisofy.com/lynis/controls/USB-1000/

  * Disable drivers like firewire storage when not used, to prevent unauthorized storage or data theft [STRG-1846]
      https://cisofy.com/lynis/controls/STRG-1846/

  * Check DNS configuration for the dns domain name [NAME-4028]
      https://cisofy.com/lynis/controls/NAME-4028/

  * Consider using a tool to automatically apply upgrades [PKGS-7420]
      https://cisofy.com/lynis/controls/PKGS-7420/

  * Check your resolv.conf file and fill in a backup nameserver if possible [NETW-2705]
      https://cisofy.com/lynis/controls/NETW-2705/

  * You are advised to hide the mail_name (option: smtpd_banner) from your postfix configuration. Use postconf -e or change your main.cf file (/etc/postfix/main.cf) [MAIL-8818]
      https://cisofy.com/lynis/controls/MAIL-8818/

  * Check iptables rules to see which rules are currently not used [FIRE-4513]
      https://cisofy.com/lynis/controls/FIRE-4513/

  * Install Apache mod_evasive to guard webserver against DoS/brute force attempts [HTTP-6640]
      https://cisofy.com/lynis/controls/HTTP-6640/

  * Install Apache modsecurity to guard webserver against web application attacks [HTTP-6643]
      https://cisofy.com/lynis/controls/HTTP-6643/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : AllowTcpForwarding (set YES to NO)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : ClientAliveCountMax (set 3 to 2)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : Compression (set YES to NO)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : LogLevel (set INFO to VERBOSE)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : MaxAuthTries (set 6 to 3)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : MaxSessions (set 10 to 2)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : PermitRootLogin (set YES to (FORCED-COMMANDS-ONLY|NO|PROHIBIT-PASSWORD|WITHOUT-PASSWORD))
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : Port (set 22 to )
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : TCPKeepAlive (set YES to NO)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : X11Forwarding (set YES to NO)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Consider hardening SSH configuration [SSH-7408]
    - Details  : AllowAgentForwarding (set YES to NO)
      https://cisofy.com/lynis/controls/SSH-7408/

  * Turn off PHP information exposure [PHP-2372]
    - Details  : expose_php = Off
      https://cisofy.com/lynis/controls/PHP-2372/

  * Change the allow_url_fopen line to: allow_url_fopen = Off, to disable downloads via PHP [PHP-2376]
      https://cisofy.com/lynis/controls/PHP-2376/

  * Enable logging to an external logging host for archiving purposes and additional protection [LOGG-2154]
      https://cisofy.com/lynis/controls/LOGG-2154/

  * Check what deleted files are still in use and why. [LOGG-2190]
      https://cisofy.com/lynis/controls/LOGG-2190/

  * Add a legal banner to /etc/issue, to warn unauthorized users [BANN-7126]
      https://cisofy.com/lynis/controls/BANN-7126/

  * Add legal banner to /etc/issue.net, to warn unauthorized users [BANN-7130]
      https://cisofy.com/lynis/controls/BANN-7130/

  * Enable process accounting [ACCT-9622]
      https://cisofy.com/lynis/controls/ACCT-9622/

  * Enable sysstat to collect accounting (no results) [ACCT-9626]
      https://cisofy.com/lynis/controls/ACCT-9626/

  * Audit daemon is enabled with an empty ruleset. Disable the daemon or define rules [ACCT-9630]
      https://cisofy.com/lynis/controls/ACCT-9630/

  * Install a file integrity tool to monitor changes to critical and sensitive files [FINT-4350]
      https://cisofy.com/lynis/controls/FINT-4350/

  * One or more sysctl values differ from the scan profile and could be tweaked [KRNL-6000]
    - Solution : Change sysctl value or disable test (skip-test=KRNL-6000:<sysctl-key>)
      https://cisofy.com/lynis/controls/KRNL-6000/

  * Harden compilers like restricting access to root user only [HRDN-7222]
      https://cisofy.com/lynis/controls/HRDN-7222/

  Follow-up:
  ----------------------------
  - Show details of a test (lynis show details TEST-ID)
  - Check the logfile for all details (less /var/log/lynis.log)
  - Read security controls texts (https://cisofy.com)
  - Use --upload to upload data to central system (Lynis Enterprise users)

================================================================================

  Lynis security scan details:

  Hardening index : 66 [#############       ]
  Tests performed : 246
  Plugins enabled : 0

  Components:
  - Firewall               [V]
  - Malware scanner        [V]

  Scan mode:
/opt/lynis/include/report: line 223: [: -eq: unary operator expected
  Normal [V]  Forensics [ ]  Integration [ ]  Pentest [ ]

  Lynis modules:
  - Compliance status      [?]
  - Security audit         [V]
  - Vulnerability scan     [V]

  Files:
  - Test and debug information      : /var/log/lynis.log
  - Report data                     : /var/log/lynis-report.dat

================================================================================

  Exceptions found
  Some exceptional events or information was found!

  What to do:
  You can help by providing your log file (/var/log/lynis.log).
  Go to https://cisofy.com/contact/ and send your file to the e-mail address listed

================================================================================
/opt/lynis/include/report: line 279: [: too many arguments

  Lynis 2.7.5

  Auditing, system hardening, and compliance for UNIX-based systems
  (Linux, macOS, BSD, and others)

  2007-2019, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)

 
 ```
 
