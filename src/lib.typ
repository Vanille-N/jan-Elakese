#let bold-if(b, t) = {
  if b [* #t *] else [ #t ]
}

#let nimi-lon = (
  // Core
  "a", "akesi", "ala", "alasa", "ale", "anpa", "ante", "anu", "awen",
  "e", "en", "esun",
  "ijo", "ike", "ilo", "insa",
  "jaki", "jan", "jelo", "jo",
  "kala", "kalama", "kama", "kasi", "ken", "kepeken", "kili", "kiwen", "ko", "kon", "kule", "kulupu", "kute",
  "la", "lape", "laso", "lawa", "len", "lete", "li", "lili", "linja", "lipu", "loje", "lon", "luka", "lukin", "lupa",
  "ma", "mama", "mani", "mi", "moku", "moli", "monsi", "mu", "mun", "musi", "mute",
  "nanpa", "nasa", "nasin", "nena", "ni", "nimi", "noka",
  "o", "olin", "ona", "open",
  "pakala", "pali", "palisa", "pan", "pana", "pi", "pilin", "pimeja", "pini", "pipi", "poka", "poki", "pona", "pu",
  "sama", "seli", "selo", "seme", "sewi", "sijelo", "sike", "sin", "sina", "sinpin", "sitelen", "sona", "soweli", "sona", "soweli", "suli", "suno", "supa", "suwi",
  "tan", "taso", "tawa", "telo", "tenpo", "toki", "tomo", "tu",
  "unpa", "uta", "utala",
  "walo", "wan", "waso", "wawa", "weka", "wile",
  // Common
  "kijetesantakalu", "kin", "kipisi", "ku", "leko",
  "meli", "mije", "misikeke", "monsuta", "n",
  "namako", "soko", "tonsi",
  // Uncommon
  "ali", "epiku", "jasima", "lanpan", "linluwi",
  "majuna", "meso", "nimisin", "oko", "su",
  // Obscure
  "te", "to", "apeja", "pake",
  "usawi", "isipin",
)

#let punctuation = (".", ":", "!", ":", ",")

#let spacing(prev, cur) = {
  (
    "": (word: [], punct: [], unk: []),
    word: (word: [ ], punct: [], unk: [ ]),
    punct: (word: [ ], punct: [], unk: [ ]),
    unk: (word: [ ], punct: [], unk: [ ]),
  ).at(prev).at(cur)
}

#let sitelen-Lasina(nimi-sin, txt) = {
  let lines = txt.split("\n")
  while lines.at(0) == "" {
    lines = lines.slice(1)
  }
  let paragraphs = ()
  let paragraph = []
  for line in lines {
    if line == "" {
      paragraphs.push(paragraph)
      paragraph = []
      continue
    }
    let words = line.split(" ")
    let (size, bold, words) = if words.at(0) == "=" {
      (16pt, true, words.slice(1))
    } else if words.at(0) == "==" {
      (14pt, true, words.slice(1))
    } else {
      (12pt, false, words)
    }
    paragraph += [
      #text(size: size)[#bold-if(bold)[#{
      let prev = ""
      for word in words {
        if word in nimi-lon {
          [#spacing(prev, "word")]
          [#word]
          prev = "word"
        } else if word in punctuation {
          [#spacing(prev, "punct")]
          [#word]
          prev = "punct"
        } else if word in nimi-sin {
          [#spacing(prev, "word")]
          [#word]
          prev = "word"
        } else if word == "~" {
          []
        } else {
          [#spacing(prev, "unk")]
          [#text(fill: red)[#word]]
          prev = "unk"
        }
      }
    }]]
  ]
  }
  paragraphs.push(paragraph)
  paragraphs
}

#let sitelen-pona(nimi-sin, txt) = {
  let lines = txt.split("\n")
  while lines.at(0) == "" {
    lines = lines.slice(1)
  }
  let already-occurred = ()
  let paragraphs = ()
  let paragraph = []
  for line in lines {
    if line == "" {
      paragraphs.push(paragraph)
      paragraph = []
      continue
    }
    let words = line.split(" ")
    let (size, bold, words) = if words.at(0) == "=" {
      (16pt, true, words.slice(1))
    } else if words.at(0) == "==" {
      (14pt, true, words.slice(1))
    } else {
      (12pt, false, words)
    }
    paragraph += [
      #text(size: size, font: "sitelen seli kiwen asuki")[#bold-if(bold)[#{
      let prev = ""
      for word in words {
        if word in nimi-lon {
          [#spacing(prev, "word")]
          [#word]
          prev = "word"
        } else if word in punctuation {
          [#spacing(prev, "punct")]
          prev = "punct"
        } else if word in nimi-sin {
          [#spacing(prev, "word")]
          if word in already-occurred {
            [[#{nimi-sin.at(word).at(0)}]]
          } else {
            [[#{nimi-sin.at(word).join(" ")}]]
            already-occurred.push(word)
          }
          prev = "word"
        } else if word == "~" {
          [#h(2.5mm)]
        } else {
          [#spacing(prev, "unk")]
          [#text(fill: red, font: "arial")[??? #word]]
          prev = "unk"
        }
      }
    }]] \
  ]
  }
  paragraphs.push(paragraph)
  paragraphs
}
