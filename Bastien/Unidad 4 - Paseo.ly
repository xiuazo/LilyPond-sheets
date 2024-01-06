\version "2.24.3"

\header {
  title = "Paseo"
}

global = {
  \key g \major
  \time 4/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global

  d-5\mf b c8 b a4
  R1
  R
  a4-2 a8 d g,2
  \fine
}

left = \relative c' {
  \global

  R1
  b4-3 c d2
  d4 b c8 b a4
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
