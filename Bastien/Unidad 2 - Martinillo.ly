\version "2.24.3"

\header {
  title = "Martinillo"
  composer = "Canción folklorica francesa"
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key c \major
}

upper = \relative c {
  \global
  \clef bass
  % music goes here
  c4-5 d e c  c d e c  e2 d2  c1

  \fine
}

\score {
  \new Staff = "upper" { \upper }
  \layout { }
  \midi { \tempo 4 = 150 }
}
