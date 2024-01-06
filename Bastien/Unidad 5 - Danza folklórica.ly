\version "2.24.3"

\header {
  title = "Danza Folklórica"
}

global = {
  \key f \major
  \time 4/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global
  % Music follows here.
  f,8-1\mf \( g a g f4 f
  g a8 bes c2\)
  f,8 \( g a g f4 a4
  c bes8 g f2\)
  \fine
}

left = \relative c' {
  \global
  % Music follows here.

  f,8-5 \( g a g f4 f
  g a8 bes c2\)
  f,8\( g a g f4 a
  c bes8 g f2\)
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
