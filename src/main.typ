#import "lib.typ" as pona

#let nimi-sin = (
  Ela: ("esun", "linja", "awen"),
  Eli: ("esun", "lon", "ilo"),
  Elo: ("esun", "la", "olin"),
  Wen: ("nimi", "esun", "nena"),
  Wan: ("wasoweli", "a", "n"),
  ewe: ("epiku", "weka", "epiku"),
  Ewe: ("epiku", "weka", "epiku", "sona"),
  EWe: ("epiku", "weka", "epiku"),
  A: ("aaoeusnth",),
)

#let SitelenTu(str) = [
  #table(
    columns: (60%, 40%),
    inset: 10pt,
    stroke: none,
    ..pona.sitelen-Lasina(nimi-sin, str)
      .zip(pona.sitelen-pona(nimi-sin, str))
      .flatten()
  )
]

#SitelenTu("
Ela Eli Elo
Ela Eli Elo
Wen
kokosila
Wan
ewe Ewe EWe
A
")

#pona.pakala.log()

#line(length: 100%)

#let nimi-sin = (
  Elena: ("epiku/2", "laso", "epiku", "nasin", "alasa"),
  Elakese: ("epiku", "lawa", "ale", "kiwen", "epiku", "suli", "epiku"),
  Sese: ("sewi", "epiku", "sewi", "epiku"),
  Ela: ("en", "linja", "alasa"),
  Elitese: ("esun", "linja", "ilo", "toki", "esun", "sijelo", "esun"),
  Nemeja: ("noka", "esun", "moku", "esun", "jan", "ala"),
  Leneja: ("len", "esun", "nena", "esun", "jelo", "awen"),
  Ijolasu: ("ilo", "jan", "o", "laso", "ala", "suwi", "uta"),
  Selineja: ("sewi", "en", "laso", "ijo", "nasa", "en", "jelo", "ante"),
  Atemisi: ("alasa", "telo", "esun", "meli", "ilo", "sewi", "ilo"),
  Elimantijan: ("en", "lete", "insa", "ma", "alasa", "nasin", "telo", "ijo", "jo", "alasa", "nasin"),
  Kilon: ("kiwen", "ilo", "linja", "olin", "nasin"),
  Akejan: ("awen", "ko", "e", "jaki", "ante", "nasin"),
)

#let SitelenTu(str) = [
  #table(
    columns: (60%, 40%),
    inset: 10pt,
    stroke: none,
    ..pona.sitelen-Lasina(nimi-sin, str)
      .zip(pona.sitelen-pona(nimi-sin, str))
      .flatten()
  )
]

#SitelenTu("
= pali suli luka luka tu
= pi jan Elakese
")

#SitelenTu("
== open

tenpo pini la jan Elakese li
~ lon ma Elena .
mama mije ona li jan sewi Sese .
jan sewi Ela li meli pi jan Sese ,
~ taso ona li mama ala tawa jan Elakese .
ona li pilin ike mute tawa jan Elakese .

jan Elakese li lili la jan sewi Ela li pana e akesi linja ike
~ lon insa pi supa lape ona .
epiku la jan Elakese li pilin monsuta ala ,
~ li luka e akesi linja ,
~ li pake e kon ona .
tan ni la jan ale li sona e ni :
~ jan Elakese li wawa .
tan ni la jan sewi Ela li toki insa e ni :
te tenpo kama la mi wile ike tawa sina a ! to

tenpo sike mute kama la
~ jan Elakese li suli mute , li wawa , li pilin pona .
meli ona en jan lili ona li pilin pona lon poka ona .
ike la jan Ela li pana e usawi nasa tawa ona .
jan Elakese li pilin nasa mute , li isipin ike ,
~ li moli e meli ona e jan lili ona .

jan Elakese li pilin ike mute tan ni :
ona li wile ala moli e kulupu ona .
ona li tawa jan lawa Elitese ,
~ li toki e ni :
te mi pilin apeja tan moli pi kulupu mi .
~ mi wile anpa . to
")

#SitelenTu("
== soweli alasa pi selo kiwen
== lon ma Nemeja

jan Elitese li toki e ni :
te mi pana e pali suli mute tawa sina .
~ sina pini e pali ale la sina pilin apeja ala .
~ o alasa e soweli alasa pi ma Nemeja .
~ o moli e ona . to

jan Elakese li tawa ma Nemeja .
ona li alasa e soweli alasa , li jo e ilo kipisi .
taso selo pi soweli alasa li kiwen mute a !
ilo kipisi li ken ala kipisi e selo kiwen pi soweli alasa .

jan Elakese li toki insa e ijo pona ,
~ li pake e uta soweli .
soweli li ken kon ala ,
~ li moli tan kon ala a !
jan Elakese li kipisi e selo kiwen soweli kepeken luka kipisi soweli .
ona li pali e len awen kepeken selo kiwen soweli .
tenpo kama la ilo utala ale
~ li ken kipisi ala e jan Elakese tan len awen ona .
")

#SitelenTu("
== akesi ike pi lawa mute lon ma Leneja

jan Elakese li tawa ona la
jan Elitese
~~ li pilin monsuta tan selo soweli ,
~~ li toki e ni :
te tenpo kama la o kama ala lon tomo mi .
~ o alasa e akesi pi lawa mute pi ma Leneja .
~ o moli e ona .
~ o tawa a . to

jan Elakese li tawa ma Leneja pi telo jaki .
ni la akesi ike suli li lon .
jan ale lon ma Leneja li pilin monsuta tawa akesi ike .
jan Elakese li kipisi e lawa akesi .
taso lawa wan li moli la lawa tu li mama a !
tenpo lili la akesi li jo e lawa mute a !
jan Elakese li toki insa e ni :
te mi wan taso li ken ala moli e akesi ike ni .
~ mi wile e jan ante lon poka mi . to

jan Ijolasu li kama ,
~ li pona tawa ona kepeken ni :
~ jan Elakese li kipisi e lawa wan la
~ jan Ijolasu li seli e ona kepeken ilo seli .
lawa akesi li ken mama ala .
akesi ike li jo ala e lawa , li moli .
telo loje insa pi akesi ike li telo moli .
jan Elakese li pana e telo moli tawa ilo kipisi ona .
tenpo kama la jan Elakese li ken moli e soweli ala
~ tan telo moli lon ilo ona .
")

#SitelenTu("
== soweli pi palisa lawa
== lon ma Selineja

jan Elitese li pilin utala tan ni :
~ jan Elakese
~ li ken moli e soweli ale .
jan Elitese li kama sona e jan Elakese li wawa mute .
ona li toki e ni :
te o pana e soweli sewi pi palisa lawa
~ lon ma Selineja tawa mi
~ jan tawa la soweli ni li tawa wawa mute . to
la ona li toki insa e ni :
te meli sewi Atemisi
~~ li olin mute e soweli ni .
~ jan Elakese li lanpan e ni la
~ meli sewi Atemisi li pilin utala ,
~ li moli e jan Elakese . to

jan Elakese li tawa ma Selineja ,
~ li lukin e soweli .
jan Elakese li tawa lon monsi soweli .
taso li ken ala lanpan e soweli .
tenpo pini la jan Elitese li toki e ijo lon ,
~ tan soweli li tawa wawa .
tenpo sike wan
~ la soweli li wile lape
~ la jan Elakese li lanpan e ona .

tenpo lili la meli sewi Atemisi li tawa jan Elakese .
ona li pilin utala , li toki e ni :
te o lanpan ala e soweli ni mi . to
la jan Elakese li toki e ni :
te mi wile ala lanpan e soweli ni ,
~ taso mi anpa pi jan lawa Elitese .
~ tenpo lili la soweli li ken tawa .
~ o moli ala e mi a ! to
meli sewi Atemisi li sona e ni :
~ jan Elakese li toki e ijo lon .
ona li toki e ni :
te sina ken tawa ,
~ taso o moli ala e soweli ni a ! to

jan Elakese li pana e soweli tawa jan Elitese la ,
~ soweli li tawa wawa a !
ni la jan Elitese li ken ala jo e soweli sewi .
jan Elakese li toki e ni tawa ona :
te sina ken jo ala e soweli tan
~ sina wawa ala . to
tan ni la jan Elitese li pilin ike , li pilin apeja .
")

#SitelenTu("
== soweli wawa
== lon ma Elimantijan

jan Elitese toki e ni
~ tawa jan Elakese :
te o lanpan e soweli wawa lon ma Elimantijan .
~ o moli ala e ona .
~ la o pana e ona tawa mi . to

jan Elakese li tawa ma Elimantijan .
nasin la ona li lukin e jan soweli Kilon .
jan Elakese li toki e ni tawa jan soweli Kilon :
te mi wile lanpan e soweli wawa wan .
~ ona li wawa mute , li tawa wawa .
~ o pana e isipin pona tawa mi . to
jan soweli Kilon li toki e ni :
te n .
~ noka ona li lete la soweli li ken ala tawa .
~ la sina ken lanpan e ona . to

isipin ni li pona .
jan Elakese li tawa monsi soweli lon ma lete
~ la soweli li awen ,
~ la jan Elakese li lanpan e ona ,
~~ li tawa jan Elitese e ona .

jan Elakese li tawa la jan soweli Kilon li lukin e ilo kipisi pi jan Elakese .
ilo kipisi li jo e telo moli pi akesi ike .
pakala lili la ona li kipisi e palisa luka ona .
ni li ike suli tan telo moli li moli ale e jan ale .
jan soweli Kilon li jan wawa , li moli ala .
taso ona li pilin ike mute , li toki wawa e ni :
te jan Elakese o !
~ kipisi sina li ike tawa mi .
~ tenpo kama la o ike tawa sina a ! to
")

#SitelenTu("
== tomo soweli jaki pi jan Akejan

lon ma Akejan
~ la jan lawa li jo e soweli mani mute .
soweli ni li insa tomo soweli ,
~ li pana e ko mute pi jaki mute .
jan Elitese li wile e ni :
~ jan Elakese
~ li jaki ala e tomo soweli .
pali ni li ike tan tomo soweli li jaki mute .

jan Elakese li kepeken kiwen suli ,
~ li pana e nasin ante tawa telo nasin suli wan .
telo nasin li lanpan e ko jaki ,
~ la tomo soweli li jaki ala a !

ni li pona tan pali suli ni li pini lon tenpo lili .
taso jan Elitese li pilin pona ala .
ona li toki e ni :
te tenpo kama la , pali suli ona li ike mute a . to
")

#SitelenTu("
== waso ike pi moku jan lon ma Sinpalijan
")

#SitelenTu("
== soweli mani lon ma Keta
")

#SitelenTu("
== soweli tawa mute pi jan Tijomete
")

#SitelenTu("
== len linja pi jan Ipolita
")

#SitelenTu("
== soweli mani pi jan suli Kejon
")

#SitelenTu("
== kili jelo pi jan Sepelite
")

#SitelenTu("
== soweli seli lon ma moli
")

#SitelenTu("
== pini
")

#pona.pakala.pini
