\version "2.24.3"

\header {
  title = "Etude de pedal"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Andante"
  \key c \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  \set fingeringOrientations = #'(up)
  <c-1 e-3>4 q q r | <c-1 f-4> q q r | <c e>2 ( g' c1-2 ) |
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  <c-5 g'-1>4\sustainOn q q\sustainOff r | <c-1 a'-5>\sustainOn q q\sustainOff r | <c g'>1\sustainOn | s1 |
  \fine
}


\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
}

\score {
  \unfoldRepeats {
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff = "upper" \with { midiInstrument = "acoustic grand" } { \upper }
      \new Staff = "lower" \with { midiInstrument = "acoustic grand" } { \lower }
    >>
  }
  \midi { \tempo 4 = 150 }
}