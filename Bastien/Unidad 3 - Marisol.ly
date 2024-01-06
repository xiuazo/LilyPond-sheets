\version "2.24.3"
\header {
  title = "Marisol"
  composer = "Cancion folklórica"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
  \tempo "Moderato"

  \partial 4 <c-1>8\mf \( c
  c4 r e8 e
  e4 c c8 e
  g4 g f8 e
  \break
  d2\) d8\( e
  f4 f e8 d
  e4 c c8 e
  d4 r <b\1>8 <d-2>

  \partial 2 c2
  \)
  \fine
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  \partial 4 r4
  r <g'-1> r
  \chordmode { c,2 } r4
  \chordmode { c,2 } r4

  <b, f' g>2 r4
  <b f' g>2 r4
  \chordmode { c,2 } r4
  r <g'-1> r
  \partial 2 \chordmode { c,2 }
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { \tempo 4=150 }
}