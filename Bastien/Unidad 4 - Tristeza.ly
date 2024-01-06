\version "2.24.3"

\header {
  title = "Tristeza"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Lentamente"
}

right = \relative c'' {
  \global

  c,4-1\mf \( g' fis-4 c
  f!1-4
  g4 g g c,
  e1
  \)
  \break
  c4\( g' fis c
  f!1
  f4 ees f ees
  c1
  \)
  \fine
}

left = \relative c' {
  \global

  R1
  r2 <c, f a>
  R1
  r2 \chordmode { c, }

  R1
  r2 <c f a>
  R1
  r2 \chordmode { c, }
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
    \tempo 4=140
  }
}
