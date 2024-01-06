\version "2.24.3"

\header {
  title = "La pobre yegua gris"
  composer = "Tradicional"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Vivamente"
}

right = \relative c'' {
  \global

  \partial 8 r8\mf
  c,4-1 c c d
  e-3 e8 dis e d-2 c4
  <d\3> \( d8 cis d c-2 b4 \)
  \break

  <e\3>4 \( e8 dis e d-2 c r \)
  c4-1 c c d
  e-3 e8 dis e d-2 c4
  d8-2 \( d d4 e d

  c2.\) r8
  \fine

}

left = \relative c' {
  \global

  \partial 8 g8-1
  R1
  \chordmode { c, }
  <b, f' g>

  \chordmode { c,2. } r8 g'8
  R1
  \chordmode { c, }
  <b, f' g>

  \chordmode { c,2. } r8
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
  \midi {
    \tempo 4=150
  }
}
