\version "2.24.3"

\header {
  title = "Etude de acordes"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Vivo"
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  r4\mp c8-1 ( e g4\staccato ) r4 | r4 c,8 ( e g4\staccato ) r4 | r4\mf f8-1 ( a c4\staccato ) r4 | r4 f,8 ( a c4\staccato ) r4 |
  \break
  r4\f d8-5 ( b g4\staccato ) r4 | r4\mf c8-5 ( a f4\staccato ) r4 |  r4\mp c8-1 ( e g4\staccato ) r4 | r4 g8-5 ( e c4\staccato ) r4 |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <c e g>4\staccato r4 r4 q\staccato | q\staccato r4 r2 | <f a c>4\staccato r4 r4 q\staccato | q\staccato r4 r2 |
  <g b d>4\staccato r4 r2 | <f a c>4\staccato r4 r2 | <c e g>4\staccato r4 r4 q\staccato | q\staccato r4 r2 |
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