\version "2.24.3"

\header {
  title = "Etude en la escala de DO mayor"
}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
}

upper = \relative c'' {
  \global
  \clef treble

  c,-1\mf d-2 e-3 f\1
  g-2 a b c
  a2 c
  g2. r4

  \break

  c-5\f b-4 a-3 g-2
  f-1 e\3 d-2 c
  d2 g
  g2. r4

  \break

  R1
  R1
  f1-4
  e2. r4

  \break

  R1
  R1
  f1-4
  <c e>
  \fine
}

lower = \relative c {
  \global
  \clef bass

  R1
  R1
  f1-2
  e2. r4

  R1
  R1
  g1-1~
  g2. r4

  c,4-5 d-4 e-3 f-2
  g-1 a\3 b-2 c
  a2 c
  g2. r4

  c4-1 b-2 a-3 g\1
  f-2 e d c
  d2 g
  c,1
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi { \tempo 4 = 180 }
}