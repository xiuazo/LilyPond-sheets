\version "2.24.3"

\header {
  title = "El “rock” de las ocho"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Tiempo de “rock”"
  \key e \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  \repeat segno 2 {
    g8-2\f ( gis b4-3 g8 gis e4-1 ~| e2. ) r4 | g8-2 ( gis b4 g8 gis e4 ~| e2. ) r4 |
    \volta 2 \fine
    \break
    \volta 1 {
      e'8-5 ( b b e d b ~ b4 ) | R1 | e8-5 ( b b a-1 gis-3 e ~ e4 ) | R1 | \bar "||"
    }
  }

}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  \repeat segno 2 {
    R1 | <e gis b>4\staccato <e a cis>8\staccato q\staccato <e gis b>4\staccato q\staccato | R1 | <d fis a>4\staccato q8\staccato q\staccato <e gis b>4\staccato q\staccato |
    \volta 2 \fine
    \volta 1 {
      R1 | <g-3>8 (  gis b4\staccato ) b2 | R1 | <g-3>8 ( gis e4\staccato ) e2 |
    }
  }
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