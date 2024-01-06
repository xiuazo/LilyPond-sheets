\version "2.24.3"

\header {
  title = "Pensando en ti"
}

global = {
  \key g \major
  \time 4/4
  \tempo "Moderato"
}

upper = \relative c'' {
  \global

  b-3\mp\( g b c
  d2. c4
  bes-3 g bes c
  a g2.\)
  \break
  \repeat segno 2 {
    b4-3\mf \( g b c
    d2. c4
    c bes-3 bes a
    a g2.\)
    \volta 2 \fine
    \break
    \volta 1 {
      d'2-4\f\( d4 d
      e2-5 e4 e
      ees-4 e-5 c-3 g-1
      bes-2 b2.-3 \)
    }
  }

  \bar "||"
}

lower = \relative c' {
  \global
  \clef bass
  % Music follows here.
  <g b d>1
  q2 q
  <g c e>1
  <g b d>2 q

  \repeat segno 2 {
    <g b d>1
    q2 q
    <g c e>1
    <g b d>2 q
    \volta 2 \fine
    \volta 1 {
      <g b d>1
      <g c e>1
      q2 q
      <g b d>2 q
    }
  }

  \bar "||"
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
      \new Staff = "upper" { \upper }
      \new Staff = "lower" { \lower }
    >>
  }
  \midi { \tempo 4 = 150 }
}