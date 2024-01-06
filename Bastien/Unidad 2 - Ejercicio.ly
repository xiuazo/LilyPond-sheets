\version "2.24.3"

\header {
  title = "Ejercicio"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  c4-1 d e f | g2 g | g4 f e d | c1
  \break
  R1 | R1 | R1 | R1
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  R1 | R1 | R1 | R1
  <c-5>4 d e f | g2 g | g4 f e d | c1

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