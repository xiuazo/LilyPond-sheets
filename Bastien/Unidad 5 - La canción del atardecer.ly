\version "2.24.3"

\header {
  title = "La canción del atardecer"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Lentamente"
  \key f \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  a2-3\p (  a4 a | a2 g | bes a4 g | a2. ) r4 |
  \break
  c2 ( c4 c | c2 bes | a g4 a | g2 f ) |
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <f a c>1 | <f bes d> | <e bes' c> | <f a c>2. r4 |
  <f a c>1 | <f bes d> | <e bes' c> | <f a c>1 |
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