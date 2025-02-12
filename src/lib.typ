#let pu(var: 1) = (group: "word", rarity: "pu", var: var)
#let ku(var: 1) = (group: "word", rarity: "ku", var: var)
#let sin(var: 1) = (group: "word", rarity: "sin", var: var)
#let punct(word, symb, spacing: "close") = (word: word, symb: symb, group: spacing)


#let pini = <tp-pini>
#let log-accum = state("log", ())
#let log() = context {
  let errors = log-accum.at(<tp-pini>)
  if errors != () {
    text(fill: red)[*There are compilation errors*\ ]
    for msg in log-accum.at(<tp-pini>) [
      #h(1cm) #msg \
    ]
  }
}
#let alert(color, msg) = {
  log-accum.update(acc => { acc.push(text(fill: color)[* #msg *]); acc })
}

#let nimi-ale = (
  a: pu(),
  akesi: pu(var: 2),
  ala: pu(),
  alasa: pu(),
  ale: pu(),
  anpa: pu(),
  ante: pu(),
  anu: pu(),
  awen: pu(),
  e: pu(),
  en: pu(),
  esun: pu(),
  ijo: pu(),
  ike: pu(),
  ilo: pu(),
  insa: pu(),
  jaki: pu(),
  jan: pu(),
  jelo: pu(),
  jo: pu(),
  kala: pu(var: 2),
  kalama: pu(),
  kama: pu(),
  kasi: pu(),
  ken: pu(),
  kepeken: pu(),
  kili: pu(),
  kiwen: pu(),
  ko: pu(),
  kon: pu(),
  kule: pu(),
  kulupu: pu(),
  kute: pu(),
  la: pu(),
  lape: pu(),
  laso: pu(),
  lawa: pu(),
  len: pu(),
  lete: pu(),
  li: pu(),
  lili: pu(),
  linja: pu(),
  lipu: pu(),
  loje: pu(),
  lon: pu(),
  luka: pu(),
  lukin: pu(),
  lupa: pu(),
  ma: pu(),
  mama: pu(),
  mani: pu(),
  mi: pu(),
  moku: pu(),
  moli: pu(),
  monsi: pu(),
  mu: pu(),
  mun: pu(),
  musi: pu(),
  mute: pu(),
  nanpa: pu(),
  nasa: pu(),
  nasin: pu(),
  nena: pu(),
  ni: pu(var: 2),
  nimi: pu(),
  noka: pu(),
  o: pu(),
  olin: pu(var: 3),
  ona: pu(),
  open: pu(),
  pakala: pu(),
  pali: pu(),
  palisa: pu(),
  pan: pu(),
  pana: pu(),
  pi: pu(),
  pilin: pu(),
  pimeja: pu(),
  pini: pu(),
  pipi: pu(),
  poka: pu(),
  poki: pu(),
  pona: pu(),
  pu: pu(),
  sama: pu(),
  seli: pu(),
  selo: pu(),
  seme: pu(),
  sewi: pu(var: 2),
  sijelo: pu(),
  sike: pu(),
  sin: pu(),
  sina: pu(),
  sinpin: pu(),
  sitelen: pu(),
  sona: pu(),
  soweli: pu(),
  suli: pu(),
  suno: pu(),
  supa: pu(),
  suwi: pu(),
  tan: pu(),
  taso: pu(),
  tawa: pu(),
  telo: pu(),
  tenpo: pu(),
  toki: pu(),
  tomo: pu(),
  tu: pu(),
  unpa: pu(),
  uta: pu(var: 2),
  utala: pu(),
  walo: pu(),
  wan: pu(),
  waso: pu(),
  wawa: pu(),
  weka: pu(),
  wile: pu(var: 2),
  kijetesantakalu: ku(),
  kin: ku(),
  kipisi: ku(),
  ku: ku(),
  leko: ku(),
  meli: ku(var: 2),
  mije: ku(var: 2),
  misikeke: ku(),
  monsuta: ku(),
  n: ku(),
  namako: ku(var: 2),
  soko: ku(var: 3),
  tonsi: ku(),
  ali: ku(),
  epiku: ku(var: 2),
  jasima: ku(),
  lanpan: ku(var: 2),
  linluwi: ku(var: 3),
  majuna: ku(var: 3),
  meso: ku(),
  nimisin: ku(),
  oko: ku(),
  su: ku(),
  apeja: sin(),
  isipin: sin(),
  jami: sin(),
  jonke: sin(),
  kamalawala: sin(),
  kapesi: sin(var: 3),
  kiki: sin(),
  kokosila: sin(),
  konwe: sin(),
  kulijo: sin(),
  melome: sin(),
  mijomi: sin(),
  misa: sin(var: 2),
  mulapisu: sin(),
  nja: sin(),
  ojuta: sin(),
  oke: sin(),
  omekapo: sin(),
  owe: sin(),
  pake: sin(),
  pakola: sin(),
  penpo: sin(),
  pika: sin(),
  po: sin(),
  powe: sin(),
  puwa: sin(),
  san: sin(),
  soto: sin(),
  sutopatikuna: sin(),
  taki: sin(var: 2),
  teje: sin(),
  unu: sin(),
  usawi: sin(),
  wa: sin(),
  wasoweli: sin(),
  wekama: sin(),
  wuwojiti: sin(),
  yupekosi: sin(),
  // Punctuation
  te: punct("\"", "te", spacing: "open"),
  to: punct("\"", "to"),
  ".": punct(".", []),
  ":": punct(":", []),
  "!": punct("!", []),
  ",": punct(",", []),
  "~": punct([], h(2.5mm)),
  "~~": punct([], h(5mm)),
)

#let bold-if(b, t) = {
  if b [* #t *] else [ #t ]
}

#let split-words(txt) = {
  let lines = txt.split("\n")
  while lines.at(0) == "" {
    lines = lines.slice(1)
  }
  let paragraphs = ()
  let paragraph = ()
  for line in lines {
    if line == "" {
      paragraphs.push(paragraph)
      paragraph = ()
      continue
    }
    let words = line.split(" ")
    paragraph.push(words)
  }
  paragraphs.push(paragraph)
  paragraphs
}

#let spacing(prev, cur) = {
  (
    "": (word: [], open: [], close: []),
    word: (word: [ ], open: [ ], close: []),
    open: (word: [], open: [], close: []),
    close: (word: [ ], open: [ ], close: []),
  ).at(prev).at(cur)
}

#let dispatch-Lasina(word, ext) = {
  if "/" in word {
    (word.split("/").at(0), "word")
  } else {
    let id = nimi-ale.at(word, default: none)
    if id == none {
      if word in ext {
        (word, "word")
      } else {
        (text(fill: red)[#word], "word")
      }
    } else {
      if id.group == "word" {
        (word, id.group)
      } else {
        (id.word, id.group)
      }
    }
  }
}

#let sitelen-Lasina(ext-names, txt) = {
  let structure = split-words(txt)
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph {
      let (size, bold, line) = if line.at(0) == "=" {
        (16pt, true, line.slice(1))
      } else if line.at(0) == "==" {
        (14pt, true, line.slice(1))
      } else {
        (12pt, false, line)
      }
      text(size: size)[#bold-if(bold)[#{
        for word in line {
          let (word, category) = dispatch-Lasina(word, ext-names)
          [#spacing(prev-category, category)]
          [#word]
          prev-category = category
        }
      }]]
    }
  }))
}

#let detach-num(word) = {
  if "/" in word {
    let (word, num) = word.split("/")
    (word, int(num))
  } else {
    (word, 1)
  }
}

#let reattach-num(word, variant, maxvar: 1, default: 1) = {
  if variant > maxvar {
    variant = 1
  }
  if variant == 1 and maxvar == 1 {
    variant = none
  }
  (word, variant)
}


#let sitelen-pona(ext-names, txt) = {
  let structure = split-words(txt)
  let already-occurred = ()
  let ambiguous-initials = (:)
  let out-structure = ()
  for paragraph in structure {
    let out-paragraph = []
    for line in paragraph {
      let (size, line) = if line.at(0) == "=" {
        (16pt, line.slice(1))
      } else if line.at(0) == "==" {
        (14pt, line.slice(1))
      } else {
        (12pt, line)
      }
      out-paragraph += text(size: size,
        font: "sitelen seli kiwen asuki"
      )[#{
        for word in line {
          let word = if word in ext-names {
            if word in already-occurred {
              [[#{
                let initial = ext-names.at(word).at(0)
                let (initial, variant) = detach-num(initial)
                let id = nimi-ale.at(initial)
                let (initial, variant) = reattach-num(initial, variant, maxvar: id.var)
                [ #initial#variant ]
              }]]
            } else {
              [[#{
                for letter in ext-names.at(word) {
                  let (letter, variant) = detach-num(letter)
                  let id = nimi-ale.at(letter)
                  let (letter, variant) = reattach-num(letter, variant, maxvar: id.var)
                  [ #letter#variant ]
                }
              }]]
              already-occurred.push(word)
              let initial = {
                let initial = ext-names.at(word).at(0)
                let (initial, variant) = detach-num(initial)
                let id = nimi-ale.at(initial)
                let (initial, variant) = reattach-num(initial, variant, maxvar: id.var)
                initial + if variant == none { "" } else { str(variant) }
              }
              if initial in ambiguous-initials {
                alert(red)[#initial (initial of #word) is ambiguous due to also being the initial of #ambiguous-initials.at(initial)]
              } else {
                ambiguous-initials.insert(initial, word)
              }
            }
          } else {
            let (word, variant) = detach-num(word)
            if word in nimi-ale {
              let id = nimi-ale.at(word)
              if id.group == "word" {
                let (word, variant) = reattach-num(word, variant, maxvar: id.var)
                [ #word#variant ]
              } else {
                [#id.symb]
              }
            } else {
              text(fill: red, font: "libertinus serif")[#word]
            }
          }
          [ #word]
        }
        [\ ]
      }]
    }
    out-structure.push(out-paragraph)
  }
  out-structure
}

