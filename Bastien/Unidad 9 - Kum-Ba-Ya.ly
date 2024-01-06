\version "2.24.3"

\header {
  title = "Kum-Ba-Ya"
  composer = "Motete folklórico"
  opus = ""

}

global = {
  \time 2/2
  \tempo "Moderato"
  \key d \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  \partial 2 d4-1\mf fis-2 | a4.-4 a8 a2 ~ | a2 b4-5 b | a1 ~| a2 d,4-1 fis-2 |
  \break
  a4.-4 a8 a2 ~| a g4-3 fis | e1 ~ e2 d4-1 fis-2 |
  \break
  a4.-4 a8 a2 ~ | a b4-5 b | a1 ~ | a2 g2-3 |
  \break
  fis2-2 d-1 ~| d e4-2 e | d1 ~| \partial 2 d2

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r2 | <d fis a>1 ~ | q2 <d g b> | <d fis a>1 ~ | q2 r2 |
  q1 ~| q2 r2 | <cis g' a>1 ~ | q2 r2 |
  <d fis a>1 ~ | q2 <d g b>2 | <d fis a>1 ~| q2 <d g b> |
  <d fis a>1 ~ | q2 <cis g' a> | <d fis a> <d g b> | <d fis a> |
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
  \midi { \tempo 4 = 150 }
}