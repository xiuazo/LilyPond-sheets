\version "2.24.3"

\header {
  title = "Oda a la alegria"
  composer = "Ludwig van Beethoven"
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
  e4-3 e f g | g f e d | c c d e | e d d2 |
  \break
  R1*4
  \fine
}

lower= \relative c {
  \global
  \clef bass
  % music goes here
  R1*4 |
  e4-3 e f g | g f e d | c c d e | d c c2 |
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