\version "2.24.3"

\header {
  title = "El puente de Londres"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key c \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  g4.-4 a8 g4 f | e f g2 | d4 e f2 | e4 f g2 |

  \fine
}



\score {
  \new Staff = "upper" { \upper }

  \layout { }
}

\score {
  \unfoldRepeats {
    \new Staff = "upper" \with { midiInstrument = "acoustic grand" } { \upper }
  }
  \midi { \tempo 4 = 150 }
}