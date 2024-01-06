\version "2.24.3"

\header {
  title = "Un poquito de “rock”"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Tiempo de rock moderadamente rápido"
  \key g \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  R1\f | R1 | d4-5 c b8 g ~g4 | a2 a4\staccato a4\staccato | a8 b ~ b2. ~ | b2. r4 |
  \break
  d4 c b8 g ~g4 | a\staccato c\staccato d\staccato c\staccato | c8 b ~ b2. ~ | b2. r4 | a4-3 ( f\staccato ) f8 ( g a4\staccato ) | g1 ~ |
  \break
  g2. r4 | a4 ( f\staccato ) f8 ( g a4\staccato ) | g1 ~ | g2. r4 | a4 ( f\staccato ) f8 ( g a4\staccato ) | g1\p
  \fine
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <g b d>2 q4\staccato q\staccato | q2 q4\staccato q4\staccato | q2 q4\staccato q4\staccato | <f a c>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato | q2 q4\staccato q4\staccato |
  q2 q4\staccato q4\staccato | <f a c>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato | <f a c>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato |
  q2 q4\staccato q4\staccato | <f a c>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato | <g b d>2 q4\staccato q4\staccato | <f a c>2 q4\staccato q4\staccato | <g b d>1
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