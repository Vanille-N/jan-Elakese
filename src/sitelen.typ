/// Basic text manipulations and fonts.

/// Default latin font.
#let Lasina(t) = {
  text(font: "libertinus serif")[#t]
}

/// sitelen pona font, with cartouche ligatures and a handwritten vibe.
#let seli-kiwen(t) = {
  text(font: "sitelen seli kiwen asuki")[#t]
}

/// Concatenate characters and put them in a name cartouche.
#let Nimi(spelling) = {
  seli-kiwen[
    [#{
      for chr in spelling { [#chr ] }
    }]
  ]
}

/// Conditional bold formatting.
#let bold-if(b, t) = {
  if b [*#t*] else [ #t ]
}

/// Bypass the fact that `none` is not `str`-able.
#let str-some(x) = {
  if x == none {
    ""
  } else {
    str(x)
  }
}

