\version "2.24.3"

\header {
  title = "Melodia en Fa"
  composer = "Anton Rubinstein"
  arranger = "James Bastien"
  opus = ""

}

global = {
  \time 4/4
  \tempo "Moderato"
  \key f \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c' {
  \global
  \clef treble

  % music goes here
  c2-2\mp ( b4 c | c2 b4 c | f2-4 \< e4-1 f-2 \! | c'2.-5 ) r4 |
  \break
  bes2-4 ( a4 g |  a2 g | f-1 \> e4-2 d-1 | e2-2 d \! ) |
  \break
  c2-2\mp ( b4 c | c2 b4 c | f2-4 \< e4-1 f-2 \! | d'2-5 c ) |
  \break
  bes-3 ( fis4-2 g-1 | a2-3 \> g | f1~ | f2. ) \! r4

  %\fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)

  % music goes here
  r4 <f-5 a-3> r2 | r4 <g-4 bes!-2> r2 | r4 <a-3 c-1> r2 | r4  <fis-5 a-3 ees'-1>2 q4 |
  r4 <g-5 bes-3 d-1> r2 | r4 <e-5 bes'-2 c-1> r q | r <f a c> r2 | r4 <c-5 bes' -1> r q |
  r <f-5 a-3> r2 | r4 <g-4 bes!-2> r2 | r4 <a-3 c-1> r2 | r4 <d,-5 fis-3 c'-1>2 q4 |
  r4 <g bes d> r2 | r4 <e bes' c> r q | <f a c>1\sustainOn | f,2. r4 |
  %\fine
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