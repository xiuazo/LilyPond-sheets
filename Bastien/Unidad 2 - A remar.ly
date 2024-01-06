\version "2.24.3"
\header {
  title = "A Remar"
  composer = "Canción folklórica"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Moderadamente"
}

upper = \relative c {
  \global
  \clef treble

  g''4-5 e e2
  g4 d d2
  c4 d e f
  g g g2
  \break
  g4 e e2
  f4 d d2
  c4 e g g
  c,1
  \break
  d4-2 d d d
  d e f2
  R1
  R1
  \break
  g4 e e2
  f4 d d2
  c4 e g g
  c,1
  \fine
}

lower = \relative c {
  \global
  \clef bass

  \chordmode { c,2 r2 }
  < g' f b, > r2
  \chordmode { c,1~ }
  \chordmode { c, }

  \chordmode { c,2 r2 }
  < g f b, > r2
  \chordmode { c,1~ }
  \chordmode { c, }

  R1
  R1
  e4-3 e e e
  e f g2

  \chordmode { c,2 r2 }
  < g f b, > r2
  \chordmode { c,1~ }
  \chordmode { c, }
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
