\version "2.24.3"

\header {
  title = "Sábado por la noche"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global

  R1\f
  R
  <c,-5 g'-1>4 q ees-2 e-3
  q r q r
  \break
  R1
  R
  q4 q ees e
  c1
  \fine
}

left = \relative c' {
  \global

  c,4-5 ees-3 e-2 g-1
  c, ees e g
  R1
  R
  c,4 ees e g
  c,4 ees e g
  R1
  r2 \chordmode { c,2 }
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
