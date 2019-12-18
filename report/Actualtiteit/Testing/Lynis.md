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
