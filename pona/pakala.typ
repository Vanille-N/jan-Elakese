// Collection of definitions relating to reporting compilation warnings
// (we emit very few actual compilation errors --- as in, `panic`s ---
// but we provide a method of displaying within the document a log of all
// warnings sorted by severity)
//
// Rough usage:
// - anywhere in the document, invoke `log()`.
//   This is where the log of all warnings will be inserted.
// - at the end of the document, place `pini`.
//   This will create a tag that lets `log()` know when all errors have been
//   received.
// - in functions, invoke `alert` to add all problems to the log.
//   Warnings are identified by a tag and a severity.
//   The tag determines when two warnings are identical, so that the log is not
//   composed of 100 copies of the exact same error message.
//   The severity decides the order in which they appear.

#import "aux.typ"
#import "nimi.typ"
#import "sitelen.typ"

#let (open, pakala, pini) = aux.make-new-log("pakala")

#let non-uppercase(initial, word) = {
  let tag = "uppercase("+word+")"
  pakala(red, tag, 4)[
    "#initial" lon "#word" li lili ike
  ]
}

#let non-lowercase(letter, word) = {
  let tag = "lowercase("+letter+","+word+")"
  pakala(red, tag, 5)[
    "#letter" lon "#word" li suli ike
  ]
}

#let length-mismatch(word, spelling) = {
  let tag = "len("+word+")"
  pakala(red, tag, 2)[
    "#word" li ante nanpa sitelen tawa "#sitelen.Nimi(spelling)"
  ]
}

#let sitelen-ala(word) = {
  let tag = "sitelen("+word+")"
  pakala(red, tag, 1)[
    "#word" li lon ala nasin sitelen pona
  ]
}

#let incorrect-spelling(letter, hieroglyph, word, spelling) = {
  let tag = "spelling("+letter+","+hieroglyph+","+word+")"
  pakala(red, tag, 0)[
    "#hieroglyph" (#sitelen.seli-kiwen[#hieroglyph])
    lon "#sitelen.Nimi(spelling)" li ante tawa "#letter" lon "#word"
  ]
}

#let sama-sitelen-wan(initial, this, other) = {
  let (this-word, this-spell) = this
  let (other-word, other-spell) = other
  let tag = "initial("+this-word+","+other-word+")"
  pakala(red, tag, 3)[
    #this-word (#sitelen.Nimi(this-spell))
    en #other-word (#sitelen.Nimi(other-spell))
    li sama sitelen wan "#sitelen.seli-kiwen(initial)"
  ]
}

#let rarity-alert(word, ctx, var: none) = {
  let meta = nimi.ale.at(word, default: none)
  let tag = "rarity-"+ctx+"("+word+")"
  if meta == none {
    pakala(red, tag, 0)[
      "#word" li lon ala
    ]
  } else if meta.group != "word" {
    none
  } else if meta.rarity == "pu" {
    none
  } else if meta.rarity == "ku" {
    pakala(orange, tag, 7)[
      "#word" (#sitelen.seli-kiwen(word + aux.str-some(var)))
      li lon pu ala
    ]
  } else if meta.rarity == "sin" {
    pakala(orange, tag, 6)[
      "#word" (#sitelen.seli-kiwen(word)) li lon ku suli ala
    ]
  } else {
    panic[Rarity #meta.rarity is malformed]
  }
}

