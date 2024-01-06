\version "2.24.3"

\header {
  title = "Ejercicio"
  subtitle = "Tonalidad de Sol Mayor"
}

global = {
  \key g \major
  \time 4/4
}

right = \relative c'' {
  \global

  g\fp\( a b c
  d2 d
  d4 c b a
  g2. \) r4
  \break
  R1
  R
  R
  R
  \bar ":|."
}

left = \relative c' {
  \global

  R1
  R
  R
  R

  g4 \( a b c
  d2 d
  d4 c b a
  g2. \) r4


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
    \tempo 4=100
  }
}
