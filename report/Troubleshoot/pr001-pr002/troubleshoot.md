# Troubleshoot

## Probleem: Nadat het routerscript uitgevoerd werd was het niet mogelijk om de lookups nog te doen op pr002,deze testen faalde
   * Opgelost door:
        > Ik ben eerst gaan zien of de zones correct geconfigureerd waren in pr001,dit was in orde.
        Hierna ben ik dan gaan kijken in `/etc/named.conf` en zag ik dat de acl toch maar vrij 'buggy' leek. Deze was correct geconfigureerd maar 
        werkte eigenlijk niet,door de acl bij 'allow-transfer' weg te doen en deze te wijzigen naar `allow-transfer: { any; };` ging  het probleem weg.
        Nu is het wel zo dat ik dus in de config file van de role van de master server dus de acl config heb veranderd naar any en deze wordt ook wel degelijk correct gezet
        **MAAR** na 'up' of 'provision' moet men wel nog eens de service herstarten handmatig op pr001 en pr002. (de 'reload' voldoet blijkbaar niet)
        Dit moet in de volgende volgorde:
            - Op pr001:
                1. `sudo systemctl stop named`
                2. `sudo systemctl start named`
            - Op pr002:
                1. `sudo systemctl stop named`
                2. `sudo systemctl start named`
        Hierna slaagde alle testen.
    * **Update**:
        > Na uitvoerig testen gemerkt dat:
            - Het niet nodig is om de named service opnieuw op en af te zetten op pr002 maar enkel op pr001
            - De acl's wel degelijk werken en **het probleem dus enkel lag aan het herstarten van de service op pr001**

