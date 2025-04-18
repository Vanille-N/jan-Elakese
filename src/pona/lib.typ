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

#let nimi-kipisi(ext, txt) = {
  let lines = txt.split("\n")
  let paragraphs = ()
  let paragraph = ()
  let errors = ()
  let ambiguous-initials = (:)
  let shortenable = (:)
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
    for word in line.split(" ") {
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
      } else if word in ext {
        let spelling = if word in shortenable {
          shortenable.at(word)
        } else {
          if not ("A" <= word.at(0) and word.at(0) <= "Z") {
            errors.push(pakala.non-uppercase(word.at(0), word))
          }
          for l in word.slice(1) {
            if not ("a" <= l and l <= "z") {
              errors.push(pakala.non-lowercase(l, word))
            }
          }
          let raw = ext.at(word)
          let spelling = ()
          for chara in raw {
            let (chara, variant) = detach-num(chara)
            let chara = if chara in nimi.ale {
              errors.push(pakala.rarity-alert(chara, "sitelen"))
              let variant = clamp-var(variant, max: nimi.ale.at(chara).maxvar)
              chara + sitelen.str-some(variant)
            } else {
              errors.push(pakala.sitelen-ala(chara))
              "???"
            }
            spelling.push(chara)
          }
          if word.len() != spelling.len() {
            errors.push(pakala.length-mismatch(word, spelling))
          }
          for (letter, hieroglyph) in word.clusters().zip(spelling) {
            if hieroglyph.at(0) != "?" and lower(letter) != hieroglyph.at(0) {
              errors.push(pakala.incorrect-spelling(letter, hieroglyph, word, spelling))
            }
          }
          let initial = spelling.at(0)
          if initial.at(0) != "?" {
            if initial in ambiguous-initials {
              errors.push(pakala.sama-sitelen-wan(initial, (word, spelling), ambiguous-initials.at(initial)))
            } else {
              ambiguous-initials.insert(initial, (word, spelling))
            }
          }
          shortenable.insert(word, (spelling.at(0),))
          spelling
        }
        words.push((
          type: "ext",
          var: none,
          word: word,
          spelling: spelling,
        ))
      } else if word == "=" or word == "==" {
        words.push((type: "fmt", symb: word))
      } else {
        errors.push(pakala.rarity-alert(word, "nimi"))
        words.push((type: "unk", word: word))
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

#let sitelen-Lasina(structure) = {
  structure.map(paragraph => par(justify: true, {
    let prev-category = ""
    for line in paragraph.par {
      let (size, bold, line) = title-markup(line)
      text(size: size)[#sitelen.bold-if(bold)[#{
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
      text(size: size)[#sitelen.seli-kiwen[#sitelen.bold-if(bold)[#{
        for word in line {
          let (spacing, next) = spacing-category(prev-category, word)
          [#spacing]
          prev-category = next
          if word.type == "ext" {
            [#sitelen.Nimi(word.spelling)]
          } else if word.type == "word" {
            [#word.word#word.var]
          } else if word.type == "punct" {
            [#word.symb]
          } else if word.type == "unk" {
            [#text(fill: red, sitelen.Lasina[
              #{sym.angle.l}#{word.word}#{sym.angle.r}
            ])]
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

