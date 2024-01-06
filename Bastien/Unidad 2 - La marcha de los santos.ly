\version "2.24.3"
\header {
  title = "La marcha de los santos"
  composer = "Tradicional"
}
upper = \relative c {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Con espíritu"

  \repeat volta 2 {
    \partial 2. c'-1 e f | g1~ | g4 c, e f | g1~
    \break
    g4 c, e f | g2 e | c2 e | d1~
    \break
    d2 e4 d | c2. c4 | e2 g4 g | g f2.~
    \break
    f2 e4 f | g2 e | d e | c1~ | \partial 4 c4
  }

}


lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \italianChords

  \repeat volta 2 {
    \partial 2. r4 r2
    r4 \chordmode { c,4 c, c, }
    \chordmode { c, } r r2
    r4 \chordmode { c,4 c, c, }

    \chordmode { c, } r r2
    \chordmode { c,2 } r
    \chordmode { c, } r
    r4 < g' f b, > < g f b, > < g f b, >

    < g f b, > r r2
    \chordmode { c, } r
    \chordmode { c, } r
    r f-2

    f r
    \chordmode { c, } r
    < g f b, > r
    r4 \chordmode { c, c, c,}

    \chordmode { c,4 }
  }
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
}

\score {
  \unfoldRepeats {
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff = "upper" { \upper }
      \new Staff = "lower" { \lower }
    >>
  }
  \midi { \tempo 4=200 }
}
