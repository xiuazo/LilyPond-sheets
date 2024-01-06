\version "2.24.3"
\header {
  title = "Mariana"
  composer = "Tradicional"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo "Moderato"

  <e-3>2\mf \( g
  c, e
  e4 d f2~
  f1\)
  \break
  <d>2-2 \( f4 f
  <b,\1>2 d-2
  d4 c e2~
  e1\)
  \break
  e4\( e g g
  c,2 e4 e
  e d f2~
  f1\)
  \break
  d2\( f4 f
  <b,\1>2 d
  d4 c c2~
  c1\)
  \fine
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  c1-5
  e
  <b f' g>
  <b f' g>2 <b f' g>

  b1-5
  <f'-2 g-1>
  \chordmode { c,1 }
  \chordmode { c,2 c,2 }

  c1
  e
  <b f' g>
  <b f' g>2 <b f' g>

  b1
  <f' g>
  \chordmode { c, }
  \chordmode { c,2 c, }

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