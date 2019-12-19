# Linux security auditing tools en monitoring

## Literatuurstudie

### Waarom Linux beveiligen?
  1. **Er is een gebrek aan Linux protection systems**,dit komt omdat alle beveiligingsoplossing gebruikt worden om Windows-gestuurde systemen te beveiligen aangezien het overgrote deel van computergebruikers windows hebben.Het probleem dat je dan krijgt is dat de integratie van deze windowsbeveiligingstools naar Linux niet zo evident is en dus minder effectief zullen zijn 
  2. **Gebrek aan zichtbaarheid in linux systemen**
  3. **Gebrek aan onderzoek**,dit komt natuurlijk weer door het feit dat er veel meer mensen windows-gestuurde systeem hebben en als gevolg ook niet voldoende weten over de gevaren die zich kunnen bevinden in dit systeem
  4. **Gebrek aan technieken**
* **Besluit:** Indien een bedrijf dus zijn data op een cloud gaat hosten is de kans groot dat deze (een) linux server(s) gaat gebruiken, Aangezien er onvoldoende research hierover bestaat en we dus eigenlijk niet weten welke threads er kunnen optreden kunnen we hier ons ook moeilijk op voorbereiden.

### Verschillende mogelijkheden:
#### [rkhunter](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Actualtiteit/Testing/rkhunter.md)
  - Dit is een unix-based tool die gaat scannen voor rootkits ( collectie van software die als kwaadaardig wordt beschouwd), 'backdoors' en     mogelijke lokale exploits zoals onder andere Email injecties,buffer overflows,...
    rkhunter zal dit doen doormiddel van de SHA-1 hashes van belangrijke bestanden te vergelijken met de gekende files in de online   databank.
    
#### [Lynis](https://github.com/HoGentTIN/elnx-1920-sme-Dyvex/blob/master/report/Actualtiteit/Testing/Lynis.md)
  - Ook gemaakt door de oprichter van 'rkhunter' (en enkele anderen).
  Deze beveiligingsaudit tool is gemaakt om beheerders te helpen hun beveiling te scannen en het systeem te verstevigen doormiddel van 'system hardening' wat dus betekent `het verminderen van kwetsbaarheden in een systeem en hierdoor een sterkere infrastructuur opbouwen`
  
#### chkrootkit
#### Tiger
  - Tiger is een open source collectie van shell scripts voor beveiligingsauditing en host intrusion detection  voor Unix systemen.
  Het belangrijkste doel van Tiger is de controle van de systeemconfiguratie en de status. Deze heeft dezelfde functie as lynis maar het grote voordeel is dat lynis nog steeds onderhouden en gepatcht wordt wat niet meer het geval is bij Tiger.
## Motivatie
Ik heb gekozen voor deze technologie te implementeren omwille dat ik de beveiling van een server essentieel vindt.
Mensen en bedrijven willen zich veilig voelen in de digitale wereld,ze willen niet dat hun privacy geschonden wordt en hun gegevens worden vervalst of gestolen en in de hedendaagse maatschappij krijgen we alsmaar meer te maken met 'cyber-attacks'.
Dit is medemogelijk gemaakt door de sterke evolutie in technolgie die we maken en mensen meer en meer hun gegevens gaan toevertrouwen aan de digitale wereld.
Ik wil dan ook zorgen door deze tools te implementeren er zo weinig mogelijk kwetsbaarheden in mijn servers zullen zitten.

## Resources
  - https://www.eukhost.com/kb/what-is-rootkit-hunter/
  - https://en.wikipedia.org/wiki/Rkhunter
  - https://en.wikipedia.org/wiki/Lynis
  - https://www.tecmint.com/tiger-linux-security-audit-intrusion-detection-tool/
  - http://www.chkrootkit.org/
