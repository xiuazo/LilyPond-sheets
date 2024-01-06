\version "2.24.3"

\header {
  title = "Vals"
  subtitle = "(en Fa Mayor)"
}

global = {
  \key f \major
  \time 3/4
  \tempo "Tiempo de vals"
}

right = \relative c'' {
  \global
  % Music follows here.
  a-3\mp \( bes c
  c bes a
  g g a bes2.\)

  c4\( bes a
  bes a g
  c g a
  f2.\)
  \fine
}

left = \relative c' {
  \global
  % Music follows here.
  a4-3 \( bes c
  c bes a
  g g a bes2.\)

  c4\( bes a
  bes a g
  c g a
  f2.\)
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
