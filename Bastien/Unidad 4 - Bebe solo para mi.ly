\version "2.24.3"

\header {
  title = "Bebe solo para mi"
  composer = "Canción inglesa"
  poet = "Texto de Ben Jonson"
}

global = {
  \key g \major
  \time 3/4
  \tempo "Moderato"
}

right = \relative c'' {
  \global


  b-3\mp \( b b
  c2 c4
  d c b
  a b c
  \break
  d g, c
  b2 a4
  g2.~
  g2.
  \)

  \fine
}

left = \relative c' {
  \global

  \chordmode { g,2. }
  <g c e>2.
  \chordmode { g,2. }
  <fis c' d>2.


  \chordmode { g,2. }
  <fis c' d>2.
  \chordmode { g,2. }~
  q

  \fine
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { \tempo 4 = 150 }
}
