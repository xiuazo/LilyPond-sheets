\version "2.24.3"

\header {
  title = "Las montañas de azucar"
  composer = "Canción folklórica"
  opus = ""

}

global = {
  \time 4/4
  \tempo "Vivamente"
  \key e \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  \partial 4 b8-5\f\fermata a | gis8 gis gis gis gis4 b8 b | e,8 e e4 e b'8-2 ( b |
  \break
  cis4 cis e4. cis8 | cis4 b2 ) b8-5 ( b | a a a4 a a8 a |
  \break
  gis8 gis gis4 gis ) gis8 ( a8 | b4  b fis4. a8 | \partial 4*3 gis4 e2 ) |


  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r4 | <e gis b>1 | q |
  <e a cis> | <e gis b> | <dis a' b> |
  <e gis b> | <dis a' b> | <e gis b>2. |
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