\version "2.24.3"

\header {
  title = "Siguiendo el “rock”"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Tiempo de \"rock\" brillante"
}

right = \relative c'' {
  \global

  R1\f
  R
  e,4-3\( g8 e d4 c~
  c2. \) r4
  \break
  R1
  R
  e8\( f g e d4 c~
  c2. \) r4
  \break
  R1
  R
  g'8 \( f g f d4 c~
  c2. \) r4
  \break
  R1
  R
  c4 \( e8 d c2~
  c1\fermata  \)
  \fine
}

left = \relative c' {
  \global

  \chordmode { c,4 } q8 q <c, f a>4 q
  \chordmode { c, } <c f a>4 \chordmode { c,2 }
  R1
  <c f a>4 q \chordmode { c, } r4

  \chordmode { c, } q8 q <c f a>4 q
  \chordmode { c, } <c f a>4 \chordmode { c,2 }
  R1
  <c f a>4 q \chordmode { c, } r4

  \chordmode { c,4 } q8 q <c f a>4 q
  \chordmode { c, } <c f a>4 \chordmode { c,2 }
  R1
  <c f a>4 q \chordmode { c, } r4

  \chordmode { c,4 } q8 q <c f a>4 q
  \chordmode { c, } <c f a>4 \chordmode { c,2 }
  R1
  <c f a>4 r4 \chordmode { c,2 }\fermata
  \fine
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=150
  }
}
