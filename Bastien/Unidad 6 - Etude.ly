\version "2.24.3"

\header {
  title = "Etude"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  R1\mf | c8-1 ( d e f g4 ) r4 | R1 | f8-1 ( g a bes c4 ) r4 |
  \break
  R1 | g8-1 ( a b c d4 ) r4 | R1 | g8-5 ( f e d c4 ) r4 |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  c8-5 ( d e f g4 ) r4 | R1 f8-5 ( g a bes c4 ) r4 | R1 |
  g8-5 ( a b c d4 ) r4 | R1 g,8-1 ( f e d c4 ) r4 | R1 |
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