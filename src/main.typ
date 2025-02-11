#import "lib.typ" as pona

#let nimi-sin = (
  Elena: ("epiku/2", "laso", "epiku", "nasin", "alasa"),
  Ekalese: ("epiku", "kiwen", "ale", "lawa", "epiku", "suli", "epiku"),
  Sese: ("sewi", "epiku", "sewi", "epiku"),
  Ela: ("en", "linja", "alasa"),
  Elitese: ("esun", "linja", "ilo", "toki", "esun", "sijelo", "esun"),
  Nemeja: ("noka", "esun", "moku", "esun", "jan", "ala"),
  Leneja: ("len", "esun", "nena", "esun", "jelo", "awen"),
  Ijolasu: ("ilo", "jan", "o", "laso", "ala", "suwi", "uta"),
)

#let Lasina(str) = [
  #table(
    columns: (60%, 40%),
    inset: 10pt,
    stroke: none,
    ..pona.sitelen-Lasina(nimi-sin, str)
      .zip(pona.sitelen-pona(nimi-sin, str))
      .flatten()
  )
]

#Lasina("
= pali suli luka luka tu
= pi jan Ekalese
")

#Lasina("
== open

tenpo pini la jan Ekalese li
~ lon ma Elena .
mama mije ona li jan sewi Sese .
jan sewi Ela li meli pi jan Sese ,
~ taso ona li mama ala tawa jan Ekalese .
ona li pilin ike mute tawa jan Ekalese .

jan Ekalese li suli mute , li wawa , li pilin pona .
meli ona en jan lili ona li pilin pona lon poka ona .
ike la jan Ela li pana e usawi nasa tawa ona .
jan Ekalese li pilin nasa mute , li isipin ike ,
~ li moli e meli ona e jan lili ona .

jan Ekalese li pilin ike mute tan ni .
ona li wile ala moli e kulupu ona .
ona li tawa jan lawa Elitese ,
~ li toki e ni :
te mi pilin apeja tan moli pi kulupu mi .
~ mi wile anpa . to
")

#Lasina("
== soweli suli pi selo kiwen
== lon ma Nemeja

jan Elitese li toki e ni :
te mi pana e pali suli mute tawa sina .
~ sina pini e pali ale la sina pilin apeja ala .
~ o alasa e soweli suli pi ma Nemeja .
~ o moli e ona . to

jan Ekalese li tawa ma Nemeja .
ona li alasa e soweli suli , li jo e ilo kipisi .
taso selo pi soweli suli li kiwen mute a !
ilo kipisi li ken ala kipisi e selo kiwen pi soweli suli .

jan Ekalese li toki insa e ijo pona ,
~ li pake e uta soweli .
soweli li ken kon ala ,
~ li moli tan kon ala a !
jan Ekalese li kipisi e selo kiwen soweli kepeken luka kipisi soweli .
ona li pali e len awen kepeken selo kiwen soweli .
tenpo kama la ilo utala ale
~ li ken kipisi ala e jan Ekalese tan len awen ona .
")

#Lasina("
== akesi ike pi lawa mute lon ma Leneja

jan Ekalese li kama tawa ona la
jan Elitese
~~ li pilin monsuta tan selo soweli ,
~~ li toki e ni :
te o kama ala lon tomo mi .
~ o tawa a .
~ o alasa e akesi pi lawa mute pi ma Leneja .
~ o moli e ona . to

jan Ekalese li tawa ma Leneja pi telo jaki .
ni la akesi ike suli li lon .
jan ale lon ma Leneja li pilin monsuta tawa akesi ike .
jan Ekalese li kipisi e lawa akesi .
taso lawa wan li moli la lawa tu li mama a !
tenpo lili la akesi li jo e lawa mute a !
jan Ekalese li toki insa e ni :
te mi wan li ken ala moli e akesi .
~ mi wile e jan ante lon poka mi . to

jan Ijolasu li pona tawa ona kepeken ni :
~ jan Ekalese li kipisi e lawa wan la
~ jan Ijolasu li seli e ona kepeken ilo seli .
lawa akesi li ken mama ala .
akesi ike li jo ala e lawa , li moli .
telo loje insa pi akesi ike li telo moli .
jan Ekalese li pana e telo moli tawa ilo kipisi ona .
")

#Lasina("
== soweli pi palisa lawa lon ma Selineja
")

#Lasina("
== soweli wawa lon ma Elimantijan
")

#Lasina("
== tomo soweli jaki pi jan Akejan
")

#Lasina("
== waso ike pi moku jan lon ma Sinpalijan
")

#Lasina("
== soweli mani lon ma Keta
")

#Lasina("
== soweli tawa mute pi ma Tijomete
")

#Lasina("
== len linja pi jan Ipolita
")

#Lasina("
== soweli mani pi jan suli Kejon
")

#Lasina("
== kili jelo pi jan Sepelite
")

#Lasina("
== soweli seli lon ma moli
")

#Lasina("
== pini
")
