\version "2.24.3"

\header {
  title = "Ejercicio"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Tonalidad en Fa Mayor"
  \key f \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  f4-1\fp ( g a bes | c a c2 | bes2 a | g2. ) r4 |
  \break
  c4-5 ( bes a g | f a c2 | bes g | f2. ) r4
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <f-5>4 ( g a bes | c a c2 | bes a | g2. ) r4 |
  <c-1>4 ( bes a g | f a c2 | bes g | f2. ) r4 |
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