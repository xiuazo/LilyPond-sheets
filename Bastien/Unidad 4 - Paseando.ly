\version "2.24.3"

\header {
  title = "Paseando"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global

  ees,-2\f e-3 g2-5
  ees4 e c2
  R1
  R
  \break
  ees4 e g2
  ees4 e c2
  R1
  r2 <bes-1 d-3>
  \fine
}

left = \relative c' {
  \global

  R1
  R
  c,4-5 c ees-3 e-2
  g2 g

  R1
  R
  g4 g ees e
  c1
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
    \tempo 4=140
  }
}
