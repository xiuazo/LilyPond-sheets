\version "2.24.3"
\header {
  title = "La viejita"
  composer = "Canción folklórica"
}
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  g2 e4 c
  g'2 e4 c
  d d d f
  e d c2
  \break
  g' e4 c
  g'2 e4 c
  d d d g
  c,1
  \fine
}


lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  <c e g>1 | q | <b f' g> | <c e g> |
  q | q  | <b f' g> | <c e g>
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi { \tempo 4 = 150 }
}
