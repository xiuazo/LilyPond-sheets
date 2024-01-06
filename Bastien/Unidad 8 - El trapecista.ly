\version "2.24.3"

\header {
  title = "El trapecista"
  composer = "Tradicional"
  opus = ""

}

global = {
  \time 6/8
  \tempo "Vivo"
  \key g \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  \partial 8 d8\mf-1 ( | d g-2 a b b b | c e, e a4-3 ) a8-4 ( | d,-1 fis-2 g a b a |
  \break
  a g-3 e-2 d4 ) d8 ( | d8 g-2 a b b b | c e, e a4-3 ) a8-4 ( |  d,-1 fis-2 g a b a | g4. ~g4 )
  \fine

}

lower = \relative c' {
  \global
  \clef bass
  % music goes here
  r8 | <g-2 b-1>2. | <c,-5 e-3 g-1>4. ~ q4 r8 | <d-5 c'-1>2. |
  <g-2 b-1>4. ~ q4 r8 | q2. | <c,-5 e-3 g-1>4. ~ q4 r8 | <d-5 c'-1>2. | <g b>4. ~ q4
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
}

\score {
  \unfoldRepeats {
    \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \new Staff = "upper" \with { midiInstrument = "acoustic grand" } { \upper }
      \new Staff = "lower" \with { midiInstrument = "acoustic grand" } { \lower }
    >>
  }
  \midi { \tempo 4 = 200 }
}