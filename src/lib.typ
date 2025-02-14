#let pu(var: none) = (group: "word", rarity: "pu", maxvar: var)
#let ku(var: none) = (group: "word", rarity: "ku", maxvar: var)
#let sin(var: none) = (group: "word", rarity: "sin", maxvar: var)
#let punct(word, symb, spacing: "close") = (word: word, symb: symb, group: spacing)

#let clamp-var(var, max: none) = {
  if max == none or var < 1 or var > max {
    none
  } else {
    var
  }
}

#let pini = <tp-pini>
#let log-accum = state("log", (:))
#let log() = context {
  let errors = log-accum.at(<tp-pini>)
  if errors != () {
    text(fill: red)[*There are compilation errors*\ ]
    for (_, msg) in log-accum.at(<tp-pini>) [
      #h(1cm) #msg \
    ]
  }
}
#let alert(color, uid, msg) = {
  (uid, log-accum.update(acc => {
    if uid not in acc {
      acc.insert(uid, text(fill: color)[* #msg *])
    }
    acc
  }))
}

#let incorrect-spelling(letter, hieroglyph, word, spelling) = {
  let tag = "spelling("+letter+","+hieroglyph+","+word+")"
  alert(red, tag)[#hieroglyph (#spelling) does not correctly spell out #letter (#word)]
}

#let non-uppercase(initial, word) = {
  let tag = "uppercase("+word+")"
  alert(red, tag)[#initial should be uppercase in #word]
}

#let length-mismatch(word,spelling) = {
  let tag = "len("+word+")"
  alert(red, tag)[#word should have the same number of characters as #spelling]
}

#let non-lowercase(letter, word) = {
  let tag = "lowercase("+letter+","+word+")"
  alert(red, tag)[#letter should be lowercase in #word]
}

#let sitelen-ala(word) = {
  let tag = "sitelen("+word+")"
  alert(red, tag)[#word does not have a hieroglyph]
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
)

#let punctuation = (
  // Punctuation
  te: punct("\"", " te ", spacing: "open"),
  to: punct("\"", " to "),
  ".": punct(".", []),
  ":": punct(":", []),
  "!": punct("!", []),
  ",": punct(",", []),
  "~": punct("", h(2.5mm)),
  "~~": punct("", h(5mm)),
)

#let bold-if(b, t) = {
  if b [* #t *] else [ #t ]
}

#let detach-num(word) = {
  if "/" in word {
    let (word, num) = word.split("/")
    (word, int(num))
  } else {
    (word, 1)
  }
}

#let fancy-split-words(ext, txt) = {
  let lines = txt.split("\n")
  while lines.at(0) == "" {
    lines = lines.slice(1)
  }
  let paragraphs = ()
  let paragraph = ()
  let errors = ()
  let ambiguous-initials = (:)
  let shortenable = (:)
  for line in lines {
    if line == "" {
      paragraphs.push((par: paragraph, err: errors))
      paragraph = ()
      errors = ()
      continue
    }
    let words = ()
    for word in line.split(" ") {
      let (word, variant) = if "/" in word {
        word.split("/")
      } else {
        (word, 1)
      }
      if word in nimi-ale {
        let id = nimi-ale.at(word)
        let ans = (
          type: "word",
          var: clamp-var(variant, max: id.maxvar),
          word: word,
        )
        words.push(ans)
      } else if word in punctuation {
        let id = punctuation.at(word)
        id.insert("type", "punct")
        words.push(id)
      } else if word in ext {
        let spelling = if word in shortenable {
          shortenable.at(word)
        } else {
          if not ("A" <= word.at(0) and word.at(0) <= "Z") {
            errors.push(non-uppercase(word.at(0), word))
          }
          for l in word.slice(1) {
            if not ("a" <= l and l <= "z") {
              errors.push(non-lowercase(l, word))
            }
          }
          let raw = ext.at(word)
          let spelling = {
            let spelling = ()
            for chara in raw {
              let (chara, variant) = detach-num(chara)
              let chara = if chara not in nimi-ale {
                errors.push(sitelen-ala(chara))
                "???"
              } else {
                let id = nimi-ale.at(chara)
                let variant = clamp-var(variant, max: id.maxvar)
                chara + if variant == none { "" } else { str(variant) }
              }
              spelling.push(chara)
            }
            spelling
          }
          if word.len() != spelling.len() {
            errors.push(length-mismatch(word, spelling))
          }
          for (letter, hieroglyph) in word.clusters().zip(spelling) {
            if hieroglyph.at(0) != "?" and lower(letter) != hieroglyph.at(0) {
              errors.push(incorrect-spelling(letter, hieroglyph, word, spelling))
            }
          }
          shortenable.insert(word, (spelling.at(0),))
          spelling
        }
        let ans = (
          type: "ext",
          var: none,
          word: word,
          spelling: spelling,
        )
        words.push(ans)
      } else if word == "=" {
        words.push((type: "fmt", symb: "="))
      } else if word == "==" {
        words.push((type: "fmt", symb: "==")) 
      } else {
        errors.push(alert(red, "rarity("+word+")")["#word" li nimi ala])
        words.push((type: "unk", word: word))
      }
    }
    paragraph.push(words)
  }
  if paragraph != () {
    paragraphs.push(paragraph)
  }
  paragraphs
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

#let add-record(dic, k, v) = {
  if v != none {
    dic.insert(k, v)
  }
  dic
}

#let rarity-alert(word) = {
  let meta = nimi-ale.at(word, default: none)
  if meta == none {
    alert(red, "rarity("+word+")")["#word" li nimi ala]
  } else if meta.group != "word" {
    none
  } else if meta.rarity == "pu" {
    none
  } else if meta.rarity == "ku" {
    alert(yellow, "rarity("+word+")")["#word" li nimi pu ala]
  } else {
    alert(yellow, "rarity("+word+")")["#word" li nimi pi ku suli ala]
  }
}

#let dispatch-Lasina(word, ext) = {
  if "/" in word {
    word = word.split("/").at(0)
  }
  let id = nimi-ale.at(word, default: none)
  if id == none {
    if word in ext {
      (word, (t => t), "word", none)
    } else if word in punctuation {
      let id = punctuation.at(word)
      (id.word, (t => t), id.group, none)
    } else {
      (word, (t => text(fill: red)[#t]), "word", rarity-alert(word))
    }
  } else {
    (word, (t => t), id.group, rarity-alert(word))
  }
}

#let title-markup(line) = {
  if line.at(0) == "=" {
    (16pt, true, line.slice(1))
  } else if line.at(0) == "==" {
    (14pt, true, line.slice(1))
  } else {
    (12pt, false, line)
  }
}

#let fancy-title-markup(line) = {
  if line.at(0).type == "fmt" {
    if line.at(0).symb == "=" {
      (16pt, true, line.slice(1))
    } else if line.at(0).symb == "==" {
      (14pt, true, line.slice(1))
    } else {
      panic[No such markup modifier]
    }
  } else {
    (12pt, false, line)
  }
}


#let sitelen-Lasina(ext-names, txt) = {
  let structure = split-words(txt)
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    let alerts = ()
    for line in paragraph {
      let (size, bold, line) = title-markup(line)
      text(size: size)[#bold-if(bold)[#{
        for word in line {
          let (word, style, category, err) = dispatch-Lasina(word, ext-names)
          [#spacing(prev-category, category)]
          [#style(word)]
          if err != none { alerts.push(err) }
          prev-category = category
        }
      }]]
    }
    for (_, a) in alerts { a }
  }))
}

#let spacing-category(old, word) = {
  if word.type == "ext" or word.type == "word" or word.type == "unk" {
    if old == "open" or old == "" { ([], "word") } else { ([ ], "word") } 
  } else if word.type == "punct" {
    if word.group == "open" {
      ([ ], word.group)
    } else {
      ([], word.group)
    }
  } else {
    panic[spacing-category of #word.type]
  }
}

#let fancy-sitelen-Lasina(ext, txt) = {
  let structure = fancy-split-words(ext, txt)
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph.par {
      let (size, bold, line) = fancy-title-markup(line)
      text(size: size)[#bold-if(bold)[#{
        for word in line {
          let (spacing, next) = spacing-category(prev-category, word)
          [#spacing]
          prev-category = next
          if word.type == "ext" {
            [#word.word]
          } else if word.type == "word" {
            [#word.word]
          } else if word.type == "punct" {
            [#word.word]
          } else if word.type == "unk" {
            [#text(fill: red)[#word.word]]
          } else {
            panic[#word.type]
          }
        }
      }]]
    }
    for (_, a) in paragraph.err { a }
  }))
}

#let fancy-sitelen-pona(ext, txt) = {
  let structure = fancy-split-words(ext, txt)
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph.par {
      let (size, bold, line) = fancy-title-markup(line)
      text(size: size, font: "sitelen seli kiwen asuki")[#bold-if(bold)[#{
        for word in line {
          let (spacing, next) = spacing-category(prev-category, word)
          [#spacing]
          prev-category = next
          if word.type == "ext" {
            [[#{for chara in word.spelling { [#chara ] }}]]
          } else if word.type == "word" {
            [#word.word#word.var]
          } else if word.type == "punct" {
            [#word.symb]
          } else if word.type == "unk" {
            [#text(fill: red, font: "libertinus serif")[[#word.word]]]
          } else {
            panic[#word.type]
          }
        }
      }]]
      [\ ]
    }
    for (_, a) in paragraph.err { a }
  }))
}
#let dispatch-pona(letter) = {
  let (letter, variant) = detach-num(letter)
  let id = nimi-ale.at(letter, default: (var: none))
  let variant = clamp-var(variant, max: id.at("var", default: none))
  (letter, variant)
}

#let sitelen-pona(ext-names, txt) = {
  let structure = split-words(txt)
  let already-occurred = ()
  let ambiguous-initials = (:)
  let out-structure = ()
  for paragraph in structure {
    let out-paragraph = []
    let alerts = ()
    for line in paragraph {
      let (size, _, line) = title-markup(line)
      out-paragraph += text(size: size,
        font: "sitelen seli kiwen asuki"
      )[#{
        for word in line {
          let word = if word in ext-names {
            if word in already-occurred {
              [[#{
                let initial = ext-names.at(word).at(0)
                let (initial, variant) = dispatch-pona(initial)
                [ #initial#variant ]
                let rare = rarity-alert(initial)
                if rare != none { alerts.push(rare) }
              }]]
            } else {
              if not ("A" <= word.at(0) and word.at(0) <= "Z") {
                alerts.push(non-uppercase(word.at(0), word))
              }
              for l in word.slice(1) {
                if not ("a" <= l and l <= "z") {
                  alerts.push(non-lowercase(l, word))
                }
              }
              let spelling = ext-names.at(word)
              if word.len() != spelling.len() {
                alerts.push(length-mismatch(word, spelling))
              }
              for (letter, hieroglyph) in word.clusters().zip(spelling) {
                if lower(letter) != hieroglyph.at(0) {
                  alerts.push(incorrect-spelling(letter, hieroglyph, word, spelling))
                }
              }
              [[#{
                for letter in ext-names.at(word) {
                  let (letter, variant) = dispatch-pona(letter)
                  [ #letter#variant ]
                }
              }]]
              for letter in ext-names.at(word) {
                let (letter, _) = detach-num(letter)
                let rare = rarity-alert(letter)
                if rare != none { alerts.push(rare) }
              }
              already-occurred.push(word)
              let initial = {
                let initial = ext-names.at(word).at(0)
                let (initial, variant) = dispatch-pona(initial)
                initial + if variant == none { "" } else { str(variant) }
              }
              if initial in ambiguous-initials {
                let previous = ambiguous-initials.at(initial)
                alerts.push(alert(red, "ambiguity("+word+","+previous+")")[#initial (initial of #word) is ambiguous due to also being the initial of #previous])
              } else {
                ambiguous-initials.insert(initial, word)
              }
            }
          } else if word in punctuation {
            let id = punctuation.at(word)
            [#id.symb]
          } else {
            let (word, variant) = dispatch-pona(word)
            if word in nimi-ale {
              let id = nimi-ale.at(word)
              [ #word#variant ]
              let rare = rarity-alert(word)
              if rare != none { alerts.push(rare) }
            } else {
              text(fill: red, font: "libertinus serif")[#word]
              alerts.push(rarity-alert(word))
            }
          }
          [ #word]
        }
        [\ ]
      }]
      out-paragraph += for (_, a) in alerts { a }
    }
    out-structure.push(out-paragraph)
  }
  out-structure
}

