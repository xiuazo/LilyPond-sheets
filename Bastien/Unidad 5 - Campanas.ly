\version "2.24.3"

\header {
  title = "Campanas"
}

global = {
  \key f \major
  \time 4/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global
  % Music follows here.
  c-5\f\( f, r2
  g4 a bes2\)
  c4\( f, r2
  g4 a f2\)
  \fine
}

left = \relative c' {
  \global
  % Music follows here.

  r2 c4-1 f,
  g a bes2
  r2 c4 f,
  g a f2
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
