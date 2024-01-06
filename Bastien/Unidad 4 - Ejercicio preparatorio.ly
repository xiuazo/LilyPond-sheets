\version "2.24.3"

\header {
  title = "Ejercicio preparatorio"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key g \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  g4-1\f ( d' b g | c2 c2 | d4 b a b | g2. ) r4 |

  \fine
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <g b d>1\p | <g c e> | <g b d>2 <fis c' d> | <g b d>2. r4 |
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