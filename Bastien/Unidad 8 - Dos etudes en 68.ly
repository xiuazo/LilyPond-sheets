\version "2.24.3"

\header {
  title = "Dos etudes en 6\8"
  composer = ""
  opus = ""

}

global = {
  \time 6/8
  \tempo "Moderato"
  \key g \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  g8-1 a b c b a | g4 b8 d4. | g,8 a b c b a | d4 b8 g4. |
  \fine
}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  g'8 a b c b a | g4 b8 d4. | g,8 a b c b a | d4 b8 g4. |
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
  \midi { \tempo 4 = 200 }
}

upper_b = \relative c'' {
  \global
  \clef treble
  g4-1\fp g8 g4 a8 | b4 b8 b4 r8 | a4 c8 b4 a8 | g2.
  \fine
}
lower_b = \relative c {
  \global
  \clef bass
  g4-5 g8 g4 a8 | b4 b8 b4 r8 | a4 c8 b4 a8 | g2.
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper_b }
    \new Staff = "lower" { \lower_b }
  >>

  \layout { }
  \midi { \tempo 4 = 200 }
}