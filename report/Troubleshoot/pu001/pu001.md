## Troubleshoot pu001

### Probleem 1: Niet mogelijk in te loggen met de SSH-key 
  > Opgelost door te gaan zien dat de ssh key wel degelijk in het mapje authorized_keys werd geplaats maar telkens een time-out op port 22 verkreeg,
    Dan van hieruit heb ik consultatie gevraagd aan verscheidene personen maar niemand wist goed hoe dit moest.
    Robin heeft me dan gezegd dat het probleem lag dat de 'all' host nog moest opgezet worden,hierna was het probleem dan ook opgelost!
 
 ### Probleem 2: De wordpress pagina was niet zichtbaar op de host 192.0.2.10
  > Opgelost door Bert te gaan consulteren die dan uiteindelijk zei dat het probleem misschien lag aan dat ik de database host specifieerde
    naar 192.0.2.10 terwijl dit niet moest gespecifieerd worden,alsook het wegdoen van de variabele 'mariadb_bind_address: 0.0.0.0'.
    Ik merkte eerst dus op dat ik wel naar http://localhost/wordpress kon gaan maar niet naar het benodigd ip.
    Maar hierna was dus het probleem opgelost door die twee variabelen te verwijderen 
    en was ik alsook in staat te curl'en en wget'en naar http://192.0.2.10/wordpress (en lukte de test ook natuurlijk).
    
