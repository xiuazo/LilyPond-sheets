\version "2.24.3"

\header {
  title = "Celebremos"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key f \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  c4.-5 bes8 a4 g | f g a f | g8 a bes g a4. g8 | f4-1 e-2 f2-1

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