\version "2.24.3"

\header {
  title = "Marcha"
}

global = {
  \key g \major
  \time 4/4
  \tempo "Tiempo de marcha"
}

right = \relative c'' {
  \global

  g-1\mf \( a b a
  g8 a b c d2 \)
  R1
  R
  \fine
}

left = \relative c' {
  \global

  R1
  R
  d4-1 \( b c a
  d8 c b a g2 \)
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
