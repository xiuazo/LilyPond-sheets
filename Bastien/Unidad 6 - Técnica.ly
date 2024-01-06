\version "2.24.3"

\header {
  title = "Técnica"
  subtitle = "Tonalidades del grupo 1"
  subsubtitle = "Configuraciones de la posición de cinco dedos"
}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
}

up = \relative c'' {
  c,8-1\f \( d e f g4\staccato \) g4\staccato
  R1
  c,8 \( d e f g f e d
  c4 \) r <c e g>-> r
  \break
}

low = \relative c {
  R1 c8 \( d e f g4\staccato \) g\staccato
  c,8 \( d e f g f e d
  c4 \) r <c e g>-> r
  \break
}

upper = {
  \global
  \clef treble

  \up
  \transpose c f \up
  \transpose c g \up
  \up
  \fine
}


lower = {
  \global
  \clef bass

  \low
  \transpose c f \low
  \transpose c g \low
  \low
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi { \tempo 4 = 120 }
}