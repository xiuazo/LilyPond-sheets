\version "2.24.3"

\header {
  title = "Toque de corneta"
}

global = {
  \key g \major
  \time 4/4
  \tempo "Tiempo de marcha"
}

right = \relative c'' {
  \global

  g-1\f b8 g r4 b4
  g4 b8 g r4 b
  g4 b8 g r2
  g1
  \fine
}

left = \relative c' {
  \global

  r2 d4-1 r
  r2 d4 r
  r2 d4 d
  R1
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
