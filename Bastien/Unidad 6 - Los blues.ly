\version "2.24.3"

\header {
  title = "Los \"Blues\""
}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
}

upper = \relative {
  \global

  g'4-5\mf ( c, ees-2 e-3
  c2 ) r2
  c'4-5 ( f, aes-2 a-3
  f2 ) r2

  g4-5 ( c, ees e
  c2 ) r2\version "2.24.3"
  g'1 ~
  g2. r4
  \break

  d'4-5\f ( g, bes-2 b-3
  g2 ) r2
  c4-5\mf ( f, aes-2 a-3
  f2) r2
  \break
  g4-5 ( c, ees-2 e-3 )
  R1
  g4-"rit." ( c,\> ees e
  c2  ) \! r2
  \fine
}

lower = \relative {
  \global
  \clef bass

  R1
  r2 <c e g>4\staccato r4
  R1
  r2 <f a c>4\staccato r4
  \break
  R1
  r2 <c e g>4\staccato r4
  r2 g'4\staccato \< r
  g\staccato r g\staccato \! r

  R1
  r2 <g b d>4\staccato r
  R1
  r2 <f a c>4\staccato r4

  R1
  g4-1 ( c, ees-3 e-2 )
  R1
  r2 <c e g>4\staccato r4
  \fine
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
      \new Staff = "upper" \with { midiInstrument = "acoustic grand" } { \upper }
      \new Staff = "lower" \with { midiInstrument = "acoustic grand" } { \lower }
    >>
  }
  \midi { \tempo 4 = 150 }
}