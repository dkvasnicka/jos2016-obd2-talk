# ELM327 & OBD-II
## jOpenSpace 2016

Jak rozumět řeči aut

Daniel Kvasnička 
[@dkvasnickajr](https://twitter.com/dkvasnickajr)
[http://github.com/dkvasnicka](http://github.com/dkvasnicka)


## Terminologie

OBD-II / EOBD 

* komunikační standard pro diagnostiku motorových vozidel
* v EU pro benzínové vozy od r. 2001 (nové modely 2000), pro naftu od 2004 (2003)
* definuje sadu standardních PIDů (Parameter ID) pro získávání diagnostických a "runtime" informací
* otáčky, zátěž, rychlost, lambdy, váhy vzduchu, variabilní časování ventilů, DTC
* podpora bohužel dost chaotická, opravdu univerzální je jen malá podmnožina PIDů

ELM327

* mikrokontroler, který umožňuje přistupovat k OBD přes nějaké standardní rozhraní (RS-232, USB, Bluetooth, Wi-Fi)
* eBay a spol. jsou plné dobře fungujících klonů, dnes již ve všech variantách otázka pár korun
* dražší jsou pouze originální zařízení od ELM Electronics
* novější verze čipu se v nich objevují nejdříve a pracují lépe s některými specifickými vozy


## Klienti

* iOS (Dash Command)
* Android (Torque Pro)
* vlastní aplikace, knihovny existují pro plno jazyků (Java, Python, Ruby, .NET, Arduino, OBD2Kit pro iOS...)
