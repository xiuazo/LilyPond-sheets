\version "2.24.3"

\header {
  title = "Durante la noche"
  composer = "Canción de cuna galesa"
}

global = {
  \time 4/4
  \tempo "Andante"
  \key f \major
}

upper = \relative c' {
  \global

  f4.-4 \( e8 d4 f
  g4. f8 e4 c
  d2 e4. e8
  f1
  \)
  \break

  f4. \( e8 d4 f
  g4. f8 e4 c
  d2 e4. e8
  f1
  \)
  \fine
}

lower = \relative {
  \global
  \clef bass

  a1-3
  bes
  bes2 g
  a f

  a1
  bes
  bes2 g
  a f
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>


  \layout { }
  \midi { \tempo 4 = 150 }
}