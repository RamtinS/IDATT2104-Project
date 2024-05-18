# IDATT2104-Project
Dette repoet er et resultat av den frivillige oppgaven i faget nettverksprogrammering ved NTNU, IDATT2104. Oppgaven gikk ut på å lage en videoforelsninger om de integrerte kretsene FPGA og ASIC. I dette repoet ligger det kodeeksmpler som er beskrevet om i videoforelesningene. 

Eksemplene inkluderer blant: 
* En "half-adder".
* Kryss produkt med vektorer.
* Skalarprodukt.
* En implementasjon av desimalltal.

Kodeeksemplene er skrevet ved bruk av HDL-språket Verilog og simulert ved bruk av Icarus Verilog.

## Team
* Jeffrey Yaw Annor Tabiri
* Ramtin Forouzandehjoo Samavat

## Instrukser for å kjøre kodeeksemplene

### Forutsetninger
For å klone og simulere instrukser skrevet i Verilog, må [Icarus Verilog](https://bleyer.org/icarus/) være nedlastet.

### MacOS
1. Installer Homebrew ved å kjøre følgende kommando i terminalen:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Etter at Homebrew er installert, installerer du Icarus Verilog ved å kjøre følgende kommando i terminalen:
```
brew install icarus-verilog
``` 
3. For å sjekke om installasjonen er gjennomført, kjør denne kommandoen i terminalen:
```
iverilog
```

Hvis kommandoen returnerer uten feil, kan du være sikker på at Icarus Verilog er installert riktig.
![image](https://github.com/RamtinS/IDATT2104-Project/assets/112424522/71390be9-1bde-4211-a939-0456b69d512c)

### Windows
1. Installer Icarus Verilog ved å laste ned det nyeste programmet fra nettsida dems, [Icarus Verilog](https://bleyer.org/icarus/).

2. Kjør installasjonsprogrammet og følg instruksjonene for å fullføre installasjonen.

3. For å sjekke om installasjonen er gjennomført, kjør iverilog-kommandoen:
```
iverilog
```
Hvis kommandoen returnerer uten feil, kan du være sikker på at Icarus Verilog er installert riktig.
![image](https://github.com/RamtinS/IDATT2104-Project/assets/112424522/71390be9-1bde-4211-a939-0456b69d512c)


## Installering

1. Først må du klone prosjektet. Dette gjør du ved å skrive følgende kommando i terminalen i et passende katalog:
```
git clone git@github.com:RamtinS/IDATT2104-Project.git
```

2. Naviger til prosjektet ved bruk av følgende kommando:
```
cd IDATT2104-Project
```

3. Naviger til mappen for et av eksemplene, for eksempel eksempel1:
```
cd .\eksempel1\
```

4. For å kjøre det logiske designet, kan du utføre følgende kommando:
```
vvp .\half_adder_tb.vvp
```

5. Hvis du endrer Verilog-filen eller testbenken, kan du laste opp den nye konfigurasjonsdesignen som skal kjøres ved hjelp av følgende metode:
```
iverilog -o half_adder_tb.vvp .\half_adder_tb.v
```

6. For å kjøre programmet, utfører du følgende kommando fra punkt 4.


## Spesiell takk
Vil gjerne gi en spesiell takk til lærer for en fin kreativ oppgave :).
