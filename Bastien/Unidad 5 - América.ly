\version "2.24.3"

\header {
  title = "América"
  composer = ""
  opus = ""

}

global = {
  \time 3/4
  \tempo ""
  \key f \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  f4-2 f g | e4. f8 g4 | a a b | a4. g8 f4 | g4 f e | f2. |

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