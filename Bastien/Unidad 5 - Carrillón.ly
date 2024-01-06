\version "2.24.3"

\header {
  title = "Carrillón"
}

global = {
  \key f \major
  \time 3/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global
  % Music follows here.
  a-3\f f g
  R2.
  r4 g a
  f2.
  a4 g f
  R2.
  r4 g a
  f2.
  \fine
}

left = \relative c' {
  \global
  % Music follows here.
  R2.
  c2.-1
  c4 r r
  R2.
  R2.
  c2.
  c4 r r
  R2.
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
  \midi { \tempo 4=150 }
}
