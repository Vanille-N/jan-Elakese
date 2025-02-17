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

#import "nimi.typ"
#import "sitelen.typ"

#let pini = <tp-pini>

#let log-accum = state("log", (:))

#let log() = context {
  let errors = log-accum.at(<tp-pini>).values().sorted(key: k => k.at(0))
  if errors != () {
    text(fill: red)[*pakala lili li lon lipu ni*\ ]
    for (_, _, count, msg) in errors [
      - #msg #text(fill: gray.darken(20%))[($times #count$)] \
    ]
  }
}

#let alert(color, uid, badness, msg) = {
  log-accum.update(acc => {
    if uid not in acc {
      acc.insert(uid, (badness, uid, 1, text(fill: color)[*#msg*]))
    } else {
      let (badness, uid, count, cont) = acc.at(uid)
      acc.insert(uid, (badness, uid, count + 1, cont))
    }
    acc
  })
}

#let non-uppercase(initial, word) = {
  let tag = "uppercase("+word+")"
  alert(red, tag, 4)[
    "#initial" lon "#word" li lili ike
  ]
}

#let non-lowercase(letter, word) = {
  let tag = "lowercase("+letter+","+word+")"
  alert(red, tag, 5)[
    "#letter" lon "#word" li suli ike
  ]
}

#let length-mismatch(word,spelling) = {
  let tag = "len("+word+")"
  alert(red, tag, 2)[
    "#word" li ante nanpa sitelen tawa "#sitelen.Nimi(spelling)"
  ]
}

#let sitelen-ala(word) = {
  let tag = "sitelen("+word+")"
  alert(red, tag, 1)[
    "#word" li lon ala nasin sitelen pona
  ]
}

#let incorrect-spelling(letter, hieroglyph, word, spelling) = {
  let tag = "spelling("+letter+","+hieroglyph+","+word+")"
  alert(red, tag, 0)[
    "#hieroglyph" (#sitelen.seli-kiwen[#hieroglyph])
    lon "#sitelen.Nimi(spelling)" li ante tawa "#letter" lon "#word"
  ]
}

#let sama-sitelen-wan(initial, this, other) = {
  let (this-word, this-spell) = this
  let (other-word, other-spell) = other
  let tag = "initial("+this-word+","+other-word+")"
  alert(red, tag, 3)[
    #this-word (#sitelen.Nimi(this-spell))
    en #other-word (#sitelen.Nimi(other-spell))
    li sama sitelen wan "#sitelen.seli-kiwen(initial)"
  ]
}

#let rarity-alert(word, ctx, var: none) = {
  let meta = nimi.ale.at(word, default: none)
  let tag = "rarity-"+ctx+"("+word+")"
  if meta == none {
    alert(red, tag, 0)[
      "#word" li lon ala
    ]
  } else if meta.group != "word" {
    none
  } else if meta.rarity == "pu" {
    none
  } else if meta.rarity == "ku" {
    alert(orange, tag, 7)[
      "#word" (#sitelen.seli-kiwen(word+sitelen.str-some(var)))
      li lon pu ala
    ]
  } else if meta.rarity == "sin" {
    alert(orange, tag, 6)[
      "#word" (#sitelen.seli-kiwen(word)) li lon ku suli ala
    ]
  } else {
    panic[Rarity #meta.rarity is malformed]
  }
}

