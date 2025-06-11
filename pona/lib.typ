#import "aux.typ"
#import "nimi.typ"
#import "sitelen.typ"
#import "pakala.typ"

#let clamp-var(var, max: none) = {
  if max == none or var < 1 or var > max {
    none
  } else {
    var
  }
}

#let detach-num(word) = {
  if "/" in word {
    let (word, num) = word.split("/")
    (word, int(num))
  } else {
    (word, 1)
  }
}

#let nimisin-spellings = state("nimisin-spellings", (:))
#let nimisin-shortenable = state("nimisin-shortenable", (:))
#let nimisin-initials = state("nimisin-initials", (:))

#let nimisin-lili-forget() = {
  nimisin-shortenable.update(_ => (:))
  nimisin-initials.update(_ => (:))
}

#let nimisin-kama-lili(nimi, lili, spelling) = context {
  nimisin-shortenable.update(seen => {
    seen.insert(nimi, ())
    seen
  })
  let seen = nimisin-initials.get()
  let key = lili.join(" ")
  if key in seen {
    if nimi != seen.at(key) {
      pakala.sama-sitelen-wan(key, (nimi, spelling), nimisin-initials.get().at(key))
    }
  } else {
    nimisin-initials.update(seen => {
      seen.insert(key, (nimi, spelling))
      seen
    })
  }
}

#let spelling(word) = (letters) => {
  let letters = letters.split(" ").filter(w => w != "")
  if not ("A" <= word.at(0) and word.at(0) <= "Z") {
    pakala.non-uppercase(word.at(0), word)
  }
  for l in word.slice(1) {
    if not ("a" <= l and l <= "z") {
      pakala.non-lowercase(l, word)
    }
  }
  let chars = ()
  let errors = ()
  for char in letters {
    let (char, variant) = detach-num(char)
    let char = if char in nimi.ale {
      errors.push(pakala.rarity-alert(char, "sitelen"))
      let variant = clamp-var(variant, max: nimi.ale.at(char).maxvar)
      char + aux.str-some(variant)
    } else {
      errors.push(pakala.sitelen-ala(char))
      "???"
    }
    chars.push(char)
  }
  if word.len() != letters.len() {
    errors.push(pakala.length-mismatch(word, letters))
  }
  for (letter, hieroglyph) in word.clusters().zip(letters) {
    if hieroglyph.at(0) != "?" and lower(letter) != hieroglyph.at(0) {
      errors.push(pakala.incorrect-spelling(letter, hieroglyph, word, letters))
    }
  }
  for error in errors {
    error
  }
  nimisin-spellings.update(nimi => {
    nimi.insert(word, (full: chars, short: chars.slice(0, 1)))
    nimi
  })
}

#let segmentation(line) = {
  let words = ()
  let start = 0
  let end = 0
  let category(char) = {
    if ("a" <= char and char <= "z") or ("A" <= char and char <= "Z") or (char == "/") or ("0" <= char and char <= "9") {
      "alpha"
    } else if char in (" ", "\t") {
      "blank"
    } else {
      "symb"
    }
  }
  while start < line.len() {
    while end < line.len() and category(line.at(start)) == category(line.at(end)) {
      end += 1
    }
    if category(line.at(start)) != "blank" {
      words.push(line.slice(start, end))
    }
    start = end
  }
  words
}

#let nimi-kipisi(txt) = {
  let lines = txt.split("\n")
  let paragraphs = ()
  let paragraph = ()
  let errors = ()
  for line in lines + ("",) {
    if line == "" {
      if paragraph != () {
        paragraphs.push((par: paragraph, err: errors.filter(x => x != none)))
        paragraph = ()
        errors = ()
      }
      continue
    }
    let words = ()
    for word in segmentation(line) {
      let (word, variant) = detach-num(word)
      if word in nimi.ale {
        errors.push(pakala.rarity-alert(word, "nimi"))
        let id = nimi.ale.at(word)
        words.push((
          type: "word",
          var: clamp-var(variant, max: id.maxvar),
          word: word,
        ))
      } else if word in nimi.punctuation {
        let id = nimi.punctuation.at(word)
        id.insert("type", "punct")
        words.push(id)
      } else if word == "=" or word == "==" {
        words.push((type: "fmt", symb: word))
      } else {
        words.push((
          type: "ext",
          var: none,
          word: word,
        ))
      }
    }
    paragraph.push(words)
  }
  paragraphs
}

#let title-markup(line) = {
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

#let spacing-category(old, word) = {
  if word.type == "ext" or word.type == "word" {
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

#let sitelen-Lasina(structure) = {
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph.par {
      let (size, bold, line) = title-markup(line)
      if bold {
        nimisin-lili-forget()
      }
      text(size: size)[#aux.bold-if(bold)[#{
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
          } else {
            panic[#word.type]
          }
        }
      }]]
    }
    for a in paragraph.err { a }
  }))
}

#let sitelen-pona(structure) = {
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph.par {
      let (size, bold, line) = title-markup(line)
      text(size: size)[#sitelen.seli-kiwen[#aux.bold-if(bold)[#{
        for word in line {
          let (spacing, next) = spacing-category(prev-category, word)
          [#spacing]
          prev-category = next
          if word.type == "ext" {
            context {
              if word.word in nimisin-spellings.get() {
                let data = nimisin-spellings.get().at(word.word)
                let shorten = word.word in nimisin-shortenable.get()
                let spelling = if shorten { data.short } else { data.full }
                [#sitelen.Nimi(spelling)]
                if not shorten {
                  nimisin-kama-lili(word.word, data.short, spelling)
                }
              } else {
                [#text(fill: red, sitelen.Lasina[
                  #{sym.angle.l}#{word.word}#{sym.angle.r}
                ])]
                pakala.rarity-alert(word.word, "nimi")
              }
            }
          } else if word.type == "word" {
            [#word.word#word.var]
          } else if word.type == "punct" {
            [#word.symb]
          } else {
            panic[#word.type]
          }
        }
      }]]]
      [\ ]
    }
    for a in paragraph.err { a }
  }))
}

