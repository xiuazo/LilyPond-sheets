\version "2.24.3"

\header {
  title = "Miguel, rema el bote"
  composer = "Espiritual"
}

global = {
  \key f \major
  \time 4/4
  \tempo "Con espíritu"
}

right = \relative c'' {
  \global


  \partial 2 f,4-1\f \( a-2
  c4.-4 a8 c4 d
  c2 a4 c
  d1
  \break

  c2 \) a4\3 \(  c
  c4. a8 bes4 a
  g2 f4 g
  a2 g
  f
  \)
  \fine
}

left = \relative c' {
  \global

  \partial 2 r2
  <f, a c>1
  q
  <f bes d>2 q
  <f a c>2 r2
  q1
  <e bes' c>
  <f a c>2 <e bes' c>
  <f a c>
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
