\version "2.24.3"

\header {
  title = "Al atardecer"
}

global = {
  \key g \major
  \time 4/4
  \tempo "Lentamente"
}

right = \relative c'' {
  \global

  b4-3\mp \( g a2 \)
  b4 \( g a2 \)
  g4 \( d' c b
  a g a \) r
  \break
  b4 \( g a2 \)
  b4 \( g a2 \)
  a4 \( b c d
  a b g \) r
  \fine
}

left = \relative c' {
  \global

  <g b d>2 <g c e>
  <g b d>2 <g c e>
  <g b d>1
  <fis c' d>2. r4

  <g b d>2 <g c e>
  <g b d>2 <g c e>
  <fis c' d>1
  <g b d>2. r4
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
