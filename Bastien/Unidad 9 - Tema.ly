\version "2.24.3"

\header {
  title = "Tema"
  subtitle = "(de la “sonata en La” de Mozart)"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  opus = ""

}

global = {
  \time 3/4
  \tempo "Andante"
  \key a \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  cis4.-3\mp ( d8 cis4 | e2 ) e4 ( | b4. cis8 b4 | d2 ) d4 ( |
  \break
  a2-1 ) a4 \< ( | b2 ) b4 ( | cis2 \! e8 \> d | cis2 b4 ) \! |
  \break
  cis4.-3 ( d8 cis4 | e2 ) e4 ( | b4. cis8 b4 | d2 ) d4 ( |
  \break
  a2-1 \< b4 | cis2 d4 \! | cis2-"rit." \> b4 | a2. ) \!


  \fine
}

lower = \relative c' {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  <a-5 e'-1>2. ( | <a cis-3>2 ) r4 | <gis-1 e'-5>2. ~ | q2 r4 |
  <fis-1>2. ( | <gis-4>2. | <a-3>2 ) r4 | <e'-1>2 ( d4 ) |
  <a-5 e'-1>2. ( | <a cis-3>2 ) r4 | <gis-5 e'-1>2. ~ | q2 r4 |
  <fis-5>2 ( <gis-4>4 | <a-3>2 ) r4 | <e'-1>2 d4 | <a cis>2. |
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