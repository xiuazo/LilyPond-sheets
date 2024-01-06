\version "2.24.3"

\header {
  title = "Vals"
}

global = {
  \key g \major
  \time 3/4
  \tempo "Tiempo de vals"
}

right = \relative c'' {
  \global

  \partial 4 r\mp
  R2.
  r2 a8-2 \( b
  c4 a a
  \partial 2 g2 \)
  \fine
}

left = \relative c' {
  \global

  \partial 4 b8-3 \( c
  d4 b b
  b a \) r
  R2.
  \partial 2 r2
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
