\version "2.24.3"

\header {
  title = "Felices vamos"
  composer = "Tradicional"
}

upper = \relative c {
  \clef treble
  \key c \major
  \time 4/4

  e'\f-3 d c d | e e e2 | d4 d d2 | e4 g g2
  \break
  e4 d c d | e e e2 | d4 d e d | c1
  \fine
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \set fingeringOrientations = #'(down)
  <c-5 e-3 g-1>1 | q | <b-5 f'-2 g-1> | <c e g>
  <c e g> | <c e g> | <b f' g> | <c e g>
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {\tempo 4=150}
}
