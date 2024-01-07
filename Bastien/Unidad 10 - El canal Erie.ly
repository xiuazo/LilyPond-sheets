\version "2.24.3"

\header {
  title = "El canal Erie"
  composer = "W. S. Allen"
  opus = ""

}

global = {
  \time 4/4
  \tempo "Moderato"
  \key f \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c'' {
  \global
  \clef treble

  \partial 4 a4-5 ( | d, d f f | g g a2 ) | a4 ( a a d,8 e | f d e4 d ) a'8 ( a |
  \break
  d,4 d f8 f f f | g4 g a2 ) | a4 ( a a d,8 e | \partial 4*3 f d e4 d )

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r4 | <d f a>2 r | <cis g' a> r | <d f a> r | <d f a>4 <cis g' a> <d f a> r |
  <d f a>2 r | <cis g' a> r  <d f a> r | q4 <cis g' a> <d f a> |

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