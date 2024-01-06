\version "2.24.3"
\header {
  title = "Lavanda azul"
  composer = "Cancion folklórica inglesa"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 3/4
  \tempo "Moderato"

  <c-1> \( g' g
  g f8 e d c
  c4 <a'\5> a
  a2.
  \)
  \break
  c,4\( g' g
  g f8 e d c
  f4 g e
  d2.
  \)
  \break
  c4\( g' g
  g f8 e d c
  c4 <a'\5> a
  a2.
  \)
  \break
  c,4\( g' g
  g f8 e d c
  f4 e d
  c2.
  \)
  \fine
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4


  \chordmode { c,2. }
  q
  < c f a >
  q
  \chordmode { c,2. }
  q
  < b f' g >
  q
  \chordmode { c,2. }
  q
  < c f a >
  q
  \chordmode { c,2. }
  q
  < b f' g >
  \chordmode { c,2. }
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