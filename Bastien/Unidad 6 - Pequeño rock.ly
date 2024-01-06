\version "2.24.3"

\header {
  title = "Pequeño Rock"
}

global = {
  \time 4/4
  \tempo "Con espíritu"
  \key g \major
}

upper = \relative c'' {
  \global
  \clef treble

  R1\mf
  g2-1 b4 d
  R1
  f,2-1 a4 c

  \break

  R1
  g2-1 b4 d
  <g, b d>4\staccato\f q\staccato <f a c>\staccato <g b d>4-> ~
  q2. r4

  \break

  d'2-5\mf b4 g
  R1
  c2-5 a4 f
  R1

  \break

  d'2-5 b4 g
  R1
  <g b d>4\staccato\f q\staccato <f a c>\staccato <g b d>4-> ~
  q2. r4
  \fine
}

lower = \relative c {
  \global
  \clef bass

  g'2-5 b4 d
  R1
  f,2 a4 c
  R1

  g2 b4 d
  R1
  <g, b d>4\staccato q\staccato <f a c>\staccato <g b d>4-> ~
  q2. r4

  R1
  d'2-1 b4 g
  R1
  c2-1 a4 f


  R1
  d'2-1 b4 g
  <g b d>4\staccato q\staccato <f a c>\staccato <g b d>4-> ~
  q2. r4
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi { \tempo 4 = 150 }
}