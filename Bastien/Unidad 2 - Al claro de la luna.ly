\version "2.24.3"

\header {
  title = "Al claro de la luna"
  composer = "Canción folklorica francesa"
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
  c4-1 c c d | e2 d | c4 e d d | c1

  \fine
}

\score {
  \new Staff = "upper" { \upper }
  \layout { }
  \midi { \tempo 4 = 150 }
}
