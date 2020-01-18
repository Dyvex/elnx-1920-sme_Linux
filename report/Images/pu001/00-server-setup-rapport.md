## Testrapport 1

#### 1. Naar projectfolder op host systeem gaan:
  -> Gelukt. 
  
#### 2. *'vagrant status'* uitvoeren
  -> Gelukt,twee machines die 'Not created zijn'.
      zie screenshot 'uitvoering_vagrantstatus'

#### 3. *'vagrant up pu001'* uitvoeren:
  -> Gelukt, ok = 51,failed = 0,zie screenshot 'uitvoering_vagrantup'
  
#### 4. *'vagrant ssh pu001'* + test common.bats uitvoeren:
  -> Alle testen gelukt.

#### 5. uitloggen en met dylano@192.0.2.10 inloggen via ssh:
  -> Uiteindelijk is de ssh connectie gelukt,het probleem is opgelost doormiddel van de host 'all' ook op te zetten omdat hier mijn SSH-key zich in bevindt.
  
### Problemen tijdens het opstellen van de basic server setup:
  -> één test faalde namelijk de 'SSH key' voor mijn admin user. De host genereerde de key en werd wel degelijk geplaatst op de virtuele machine in authzorized_keys maar de ssh connectie was nog steeds niet opgelost.
  Uiteindelijk is dit succesvol gelukt door de reden die ik hierboven heb gezet.

### Research links 