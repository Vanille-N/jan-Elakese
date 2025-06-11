#import "../pona/lib.typ" as pona

#pona.spelling("Elena")("epiku/2 laso epiku nasin alasa")
#pona.spelling("Elakese")("epiku lawa ale kiwen epiku suli epiku")
#pona.spelling("Sese")("sewi epiku sewi epiku")
#pona.spelling("Ela")("en linja alasa")
#pona.spelling("Elitese")("esun linja ilo toki esun sijelo esun")
#pona.spelling("Nemeja")("noka esun moku esun jan ala")
#pona.spelling("Leneja")("len esun nena esun jelo awen")
#pona.spelling("Ijolasu")("ilo jan o laso ala suwi uta")
#pona.spelling("Selineja")("sewi en laso ijo nasa en jelo ante")
#pona.spelling("Atemisi")("alasa telo esun meli ilo sewi ilo")
#pona.spelling("Elimantijan")("en lete insa ma alasa nasin telo ijo jo alasa nasin")
#pona.spelling("Kilon")("kiwen ilo linja olin nasin")
#pona.spelling("Akejan")("awen ko e jaki ante nasin")
#pona.spelling("Sinpalijan")("sewi ijo nasin poki ala linja ijo jan ala nasin")
#pona.spelling("Atena")("alasa taso esun nasin alasa")
#pona.spelling("Keta")("ken en taso akesi")
#pona.spelling("Mino")("moli ilo nena oko")
#pona.spelling("Tijomete")("toki ijo jo ona moli esun toki esun")
#pona.spelling("Ipolita")("isipin poki olin lawa isipin tawa awen")
#pona.spelling("Amason")("awen meli awen sona olin nena")
#pona.spelling("Kejon")("kala e jo oko nimi")
#pona.spelling("Eliteja")("e lili ijo telo e jo ala")
#pona.spelling("Apolo")("ante pali oko linja oko")
#pona.spelling("Alasu")("awen laso awen sona uta")
#pona.spelling("Sepelite")("sona esun pali esun linja ilo tawa esun")

#let SitelenTu(str) = [
  #let nimi = pona.nimi-kipisi(str)
  #table(
    columns: (60%, 40%),
    inset: 10pt,
    stroke: none,
    ..pona.sitelen-Lasina(nimi)
      .zip(pona.sitelen-pona(nimi))
      .flatten()
  )
]

#pona.pakala.open[lipu ni li jo e pakala lili:]

#SitelenTu("
= pali suli luka luka tu
= pi jan Elakese
")

#SitelenTu("
== jan ale
")

#SitelenTu("
== open

tenpo pini la jan Elakese li
~ lon ma Elena.
mama mije ona li jan sewi Sese.
jan sewi Ela li meli pi jan Sese,
~ taso ona li mama ala tawa jan Elakese.
ona li pilin ike mute tawa jan Elakese.

jan Elakese li lili la jan sewi Ela li pana e akesi linja ike
~ lon insa pi supa lape ona.
epiku la jan Elakese li pilin monsuta ala,
~ li luka e akesi linja,
~ li pake e kon ona.
tan ni la jan ale li sona e ni:
~ jan Elakese li wawa.
tan ni la jan sewi Ela li toki insa e ni:
te tenpo kama la mi wile ike tawa sina a! to

tenpo sike mute kama la
~ jan Elakese li suli mute, li wawa, li pilin pona.
meli ona en jan lili ona li pilin pona lon poka ona.
ike la jan Ela li pana e usawi nasa tawa ona.
jan Elakese li pilin nasa mute, li isipin ike,
~ li moli e meli ona e jan lili ona.

jan Elakese li pilin ike mute tan ni:
ona li wile ala moli e kulupu ona.
ona li tawa jan lawa Elitese,
~ li toki e ni:
te mi pilin apeja tan moli pi kulupu mi.
~ mi wile anpa. to
")

#SitelenTu("
== soweli alasa pi selo kiwen
== lon ma Nemeja

jan Elitese li toki e ni:
te mi pana e pali suli mute tawa sina.
~ sina pini e pali ale la sina pilin apeja ala.
~ o alasa e soweli alasa pi ma Nemeja.
~ o moli e ona. to

jan Elakese li tawa ma Nemeja.
ona li alasa e soweli alasa, li jo e ilo kipisi.
taso selo pi soweli alasa li kiwen mute a!
ilo kipisi li ken ala kipisi e selo kiwen pi soweli alasa.

jan Elakese li toki insa e ijo pona,
~ li pake e uta soweli.
soweli li ken kon ala,
~ li moli tan kon ala a!
jan Elakese li kipisi e selo kiwen soweli kepeken luka kipisi soweli.
ona li pali e len awen kepeken selo kiwen soweli.
tenpo kama la ilo utala ale
~ li ken kipisi ala e jan Elakese tan len awen ona.
")

#SitelenTu("
== akesi ike pi lawa mute lon ma Leneja

jan Elakese li tawa ona la
jan Elitese
~~ li pilin monsuta tan selo soweli,
~~ li toki e ni:
te tenpo kama la o kama ala lon tomo mi.
~ o alasa e akesi pi lawa mute pi ma Leneja.
~ o moli e ona.
~ o tawa a. to

jan Elakese li tawa ma Leneja pi telo jaki.
ni la akesi ike suli li lon.
jan ale lon ma Leneja li pilin monsuta tawa akesi ike.
jan Elakese li kipisi e lawa akesi.
taso lawa wan li moli la lawa tu li mama a!
tenpo lili la akesi li jo e lawa mute a!
jan Elakese li toki insa e ni:
te mi wan taso li ken ala moli e akesi ike ni.
~ mi wile e jan ante lon poka mi. to

jan Ijolasu li kama,
~ li pona tawa ona kepeken ni:
~ jan Elakese li kipisi e lawa wan la
~ jan Ijolasu li seli e ona kepeken ilo seli.
lawa akesi li ken mama ala.
akesi ike li jo ala e lawa, li moli.
telo loje insa pi akesi ike li telo moli.
jan Elakese li pana e telo moli tawa ilo kipisi waso ona.
tenpo kama la jan Elakese li ken moli e soweli ala
~ tan telo moli lon ilo ona.
")

#SitelenTu("
== soweli pi palisa lawa
== lon ma Selineja

jan Elitese li pilin utala tan ni:
~ jan Elakese
~ li ken moli e soweli ale.
jan Elitese li kama sona e jan Elakese li wawa mute.
ona li toki e ni:
te o pana e soweli sewi pi palisa lawa
~ lon ma Selineja tawa mi
~ jan tawa la soweli ni li tawa wawa mute. to
la ona li toki insa e ni:
te meli sewi Atemisi
~~ li olin mute e soweli ni.
~ jan Elakese li lanpan e ni la
~ meli sewi Atemisi li pilin utala,
~ li moli e jan Elakese. to

jan Elakese li tawa ma Selineja,
~ li lukin e soweli.
jan Elakese li tawa lon monsi soweli.
taso li ken ala lanpan e soweli.
tenpo pini la jan Elitese li toki e ijo lon,
~ tan soweli li tawa wawa.
tenpo sike wan
~ la soweli li wile lape
~ la jan Elakese li lanpan e ona.

tenpo lili la meli sewi Atemisi li tawa jan Elakese.
ona li pilin utala, li toki e ni:
te o lanpan ala e soweli ni mi. to
la jan Elakese li toki e ni:
te mi wile ala lanpan e soweli ni,
~ taso mi anpa pi jan lawa Elitese.
~ tenpo lili la soweli li ken tawa.
~ o moli ala e mi a! to
meli sewi Atemisi li sona e ni:
~ jan Elakese li toki e ijo lon.
ona li toki e ni:
te sina ken tawa,
~ taso o moli ala e soweli ni a! to

jan Elakese li pana e soweli tawa jan Elitese la,
~ soweli li tawa wawa a!
ni la jan Elitese li ken ala jo e soweli sewi.
jan Elakese li toki e ni tawa ona:
te sina ken jo ala e soweli tan
~ sina wawa ala. to
tan ni la jan Elitese li pilin ike, li pilin apeja.
")

#SitelenTu("
== soweli wawa
== lon ma Elimantijan

jan Elitese toki e ni
~ tawa jan Elakese:
te o lanpan e soweli wawa lon ma Elimantijan.
~ o moli ala e ona.
~ la o pana e ona tawa mi. to

jan Elakese li tawa ma Elimantijan.
nasin la ona li lukin e jan soweli Kilon.
jan Elakese li toki e ni tawa jan soweli Kilon:
te mi wile lanpan e soweli wawa wan.
~ ona li wawa mute, li tawa wawa.
~ o pana e isipin pona tawa mi. to
jan soweli Kilon li toki e ni:
te n.
~ noka ona li lete la soweli li ken ala tawa.
~ la sina ken lanpan e ona. to

isipin ni li pona.
jan Elakese li tawa monsi soweli lon ma lete
~ la soweli li awen,
~ la jan Elakese li lanpan e ona,
~~ li tawa jan Elitese e ona.

jan Elakese li tawa la jan soweli Kilon
~ li lukin e ilo kipisi pi jan Elakese.
ilo kipisi li jo e telo moli pi akesi ike.
pakala lili la ona li kipisi e palisa luka ona.
ni li ike suli tan telo moli li moli ale e jan ale.
jan soweli Kilon li jan wawa, li moli ala.
taso ona li pilin ike mute, li toki wawa e ni:
te jan Elakese o!
~ kipisi sina li ike tawa mi.
~ tenpo kama la o ike tawa sina a! to
")

#SitelenTu("
== tomo soweli jaki pi jan Akejan

lon ma Akejan
~ la jan lawa li jo e soweli mani mute.
soweli ni li insa tomo soweli,
~ li pana e ko mute pi jaki mute.
jan Elitese li wile e ni:
~ jan Elakese
~ li jaki ala e tomo soweli.
pali ni li ike tan tomo soweli li jaki mute.

jan Elakese li kepeken kiwen suli,
~ li pana e nasin ante tawa telo nasin suli wan.
telo nasin li lanpan e ko jaki,
~ la tomo soweli li jaki ala a!

ni li pona tan pali suli ni li pini lon tenpo lili.
taso jan Elitese li pilin pona ala.
ona li toki e ni:
te tenpo kama la, pali suli ona li ike mute a!
~ kin la jan ante li ken ala pali lon poka sina. to
")

#SitelenTu("
== waso ike mute pi moku jan
== lon ma Sinpalijan

lon poka pi telo Sinpalijan la waso mute li lon.
waso ni li moku e jan,
~ li jo e nena sinpin kiwen,
~ li mute wawa,
~ li pana monsuta tawa jan ale.
jan Elitese li toki e ni
~ tawa jan Elakese:
te sina wan taso o tawa telo Sinpalijan.
~ la o moli e waso ike ale. to

jan Elakese li tawa lon telo Sinpalijan la
~ ona ken ala tawa tomo waso tan
~ telo li suli.
meli sewi Atena li lukin e jan Elakese,
~ li toki e ni:
te mi wile pona tawa ona.
~ o kepeken e ilo kalama ni.
~ tan pakala la waso ike li kama,
~ la sina ken moli e ona. to

taso jan Elakese li toki e ni:
te mi ken ala kepeken e ilo ona.
~ jan lawa Elitese li toki e ni:
~ jan ante li ken ala pana e pona tawa mi. to
la meli sewi Atena li toki e ni:
te mi jan ala. mi meli sewi.
~ sina ken kepeken e ilo ni. to

jan Elakese li kalama kepeken ilo ni.
waso ike ale li kute e kalama,
~ li pilin monsuta,
~ li tawa sewi.
jan Elakese li tawa wawa e ilo kipisi waso tawa sewi.
waso ale li moli tan ilo kipisi ona.
")

#SitelenTu("
== soweli mani lon ma Keta

sin la jan Elakese
~ li wile lanpan e soweli mani lon ma Keta.
ma Keta li lon ma suli ante.
tan ni la jan Elakese li tawa kepeken tomo tawa telo,
~ li kama lon ma ante.
ni la ona li toki tawa jan lawa Mino,
~ taso jan Mino li toki e ni:
te mi ken ala pana e pona tawa sina.
~ sina wan taso li wile lanpan e soweli.
~ o pona tawa sina. to

jan Elakese li luka e palisa lawa pi soweli mani.
la soweli li utala.
taso soweli la jan Elakese li wawa mute.
ona li kama jo e soweli,
~ li tawa jo e soweli tawa jan Elitese.
")

#SitelenTu("
== soweli tawa mute pi jan Tijomete

ma ante la jan Tijomete li lawa.
soweli ona li suli, li wawa, li moku e jan.
jan li ike tawa jan lawa Tijomete la
~ soweli li moku e ona.
jan pi ma ante li kama la ona li moku kin a!
pali sin ni la jan Elakese
~ li wile lanpan e soweli mute ni.

ma ni li ma lili lon meso pi telo suli.
soweli li lon insa pi tomo soweli.
linja kiwen li linluwi e anpa lawa ona.
tan ni la ona li ken ala tawa.
jan Elakese li toki tawa jan Tijomete.
jan Tijomete li wile e ni:
~ soweli ona li moku e jan Elakese.
taso jan Elakese li sona e ni.

tenpo pimeja kama la jan Elakese li lape ala.
tan ni la jan Tijomete li ken ala moli e ona.
jan Tijomete li lape la
~ jan Elakese li kalama ala,
~~ li tawa soweli,
~~ li kipisi e linja ona.
la soweli li ken tawa.
soweli li wile moku,
~ li moku e jan anpa pi jan Tijomete.
jan Tijomete li pini lape la
~ jan anpa ona li moli a!
ona li pilin monsuta.
la soweli ona li moku e ona.

pini la soweli li wile ala moku kin.
jan Elakese li pake e uta ona tan
~ ona li ken ala moku e jan kin.
ona li jo e soweli tawa ma mama ona,
~ li pana e soweli tawa jan Elitese.

soweli li monsuta, li utala.
tan ni la jan Elitese li moli sewi e ona,
~ li pana e toki sewi tawa jan sewi Sese.
")

#SitelenTu("
== len linja pi jan Ipolita

meli lili pi jan lawa Elitese li kute e ni:
~ ma ante la meli Ipolita li jo e len pi kiwen jelo.
~ len ni li pona wawa lukin.
jan Elitese li toki e ni
~ tawa jan Elakese la
~ jan Elakese li wile lanpan e len ni.

meli Ipolita li lawa e
~ kulupu meli Amason lon ma kasi.
jan ale Amason li meli, li pona lukin.
jan Elakese en jan pona ona li tawa ma Amason.
nasin la ona li moli e soweli ike mute
~ tan ona li wile pana e ijo wa tawa meli Amason.

ma Amason la jan Elakese li toki tawa meli Ipolita.
ona li toki olin, li pana e ijo pona tawa ona.
ni la meli Ipolita li pilin olin, li pilin wa.
te mi ken lanpan e len linja ona anu seme to
toki ni la jan Ipolita li pilin pona.
ona li toki e ni:
te pona.
~ tenpo suno kama la mi pana e len linja pi kiwen jelo tawa sina to

taso meli sewi Ela li wile ala e ni.
ona li wile ike tawa jan Elakese.
ona li kama lukin sama meli Amason,
~ li toki ike pi jan Elakese.
te jan Elakese en jan anpa ona li ike.
~ mije ale li wile ike tawa sina ale.
~ ona li wile moli e ona. to
ni la jan Ela li pana e pilin utala tawa meli Amason ale.

meli Amason ale li kama jo e ilo utala ona,
~ li tawa monsi pi soweli tawa ona,
~ li tawa wawa kulupu pi jan Elakese.
ona li lukin e ni la jan Elakese li toki insa e ni:
te meli Ipolita li toki lon ala.
~ ona li wile ike tawa mi. to
la ona li toki e ni:
te jan pona mi ale o!
~ meli Amason li wile moli e mi ale.
~ o kama jo e ilo utala ona.
~ o utala a!
~ o moli e ona. to

meli Amason la kulupu pi jan Elakese li wawa mute.
tenpo lili la meli Amason mute li moli.
meli ante li pakala, li ken utala ala.
jan Elakese li moli e meli Ipolita,
~ li lanpan e len linja ona.
ni ale tan toki pi lon ala pi meli sewi Ela a!
tenpo suno kama la kulupu pi jan Elakese li tawa.
pini la meli lili pi jan Elitese
~ li kama jo e len linja pi pona lukin.
")

#SitelenTu("
== soweli mani pi jan suli Kejon

pali sin la jan Elakese
~ li wile lanpan e soweli mani mute pi jan Kejon.
jan Kejon li jan suli pi sijelo tu wan.
jan Kejon li lon ma Eliteja.
ma ni li ma ante lili lon telo suli.
nasin la jan Elakese li pilin utala tawa seli suno.
ona li nasin e ilo kipisi pi tawa waso tawa suno.
jan sewi suno Apolo li pilin wa tawa jan Elakese,
~ li pana e tomo pi tawa telo pi kiwen jelo
~~ tawa jan Elakese.
tan ni la jan Elakese li ken tawa telo.

tenpo lili la jan Elakese li kama lon ma Eliteja.
ona li kama lukin e soweli awen pi lawa tu.
soweli li mu, li wile utala.
wawa lili la jan Elakese li moli e soweli awen kepeken palisa suli ona.

jan awen mute li kute e kalama utala.
ona li kama, li kalama, li wile utala.
wawa lili la jan Elakese li moli e jan awen ale.

jan suli Kejon li kute e kalama utala.
ona li kama, li wile utala.
jan Kejon
~ li jo e ilo awen tu wan,
~ li len e ilo pi awen lawa tu wan lon lawa tu wan ona,
~ li jo e palisa kipisi tu wan.
ona li utala jan Elakese.
jan Elakese li tawa e ilo kipisi pi tawa waso tawa ona.
ilo li kipisi e sinpin lawa pi jan Kejon.
ilo li pana e telo moli lon insa lawa ona.
tan ni la jan Kejon li moli kepeken wawa lili.

jan Ela li lukin e ni la
~ ona li pana e pipi kalama tawa kulupu pi soweli mani.
soweli ale li pilin monsuta, li tawa wawa lon nasin mute.
tenpo suli la jan Elakese li alasa e soweli ale.
soweli ale li linluwi la
~ jan Elakese li tawa jo e kulupu soweli
~ tawa jan Elitese.
jan Elitese li moli sewi e soweli ale tawa meli sewi Ela.
")

#SitelenTu("
== kili jelo pi jan mute Sepelite

jan Elitese li toki utala.
te tenpo pini la mi wile pali e pali suli luka luka tawa sina.
~ taso jan ante li pana pona tawa sina.
~ tan ni la mi wile pana e pali sin tu tawa sina. to
ni la jan Elakese li wile lanpan e kili nasa.
kili ni li lon ma kasi pi jan Sepelite,
~ li jelo sama kiwen mani jelo,
~ li pona moku.

jan Elakese li sona ala e kili.
nanpa wan la ona li wile kama sona e ni:
~ kili jelo li lon ma seme?
ona li kama lukin e jan majuna/2 lon telo suli.
jan telo li sona e ma pi Sepelite.
jan Elakese li tawa.

jan Elakese li kama lon ma kasi pi jan Sepelite.
taso kili jelo li sewi suli.
jan Elakese li ken ala lanpan e kili.
ona li kama lukin e jan suli Alasu.
jan Alasu li jo e sewi lon sewi monsi ona.
jan Elakese li toki.
te toki a!
~ mi wile lanpan e kili ni.
~ taso mi lili ike.
~ ken la sina ken lanpan e ona, li pana e ona tawa mi.
~ sewi li suli anu seme?
~ tenpo lili la mi ken jo e sewi.
~ ni la sina ken lape. to
jan Alasu li toki insa.
la ona li toki.
te pona.
~ sina jo e sewi la mi lanpan e kili. to

taso jan Alasu li toki pi lon ala.
ona li kama jo e kili la ona li toki.
te a a a!
~ sina isipin ike.
~ mi wile ala jo sin e sewi.
~ sina o jo e ona lon tenpo ale.
~ a a a! to
jan Elakese li toki.
te pona ala.
~ monsi mi li pilin ike.
~ ken la sina ken jo e sewi lon tenpo lili taso anu seme?
~ ni la mi ken misikeke e monsi mi.
~ la mi jo sin e sewi. to
jan Alasu li oke.

jan Alasu li jo e sewi la
~ jan Elakese li tawa a!
te a a a!
~ sina isipin ike.
~ mi wile ala jo e sewi.
~ o pona tawa sina. to
jan Elakese li lanpan e kili,
~ li pana e ona tawa jan Elitese.
")

#SitelenTu("
== soweli seli lon ma moli
")

#SitelenTu("
== pini
")

#pona.pakala.pini()
