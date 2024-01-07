\version "2.24.3"

\header {
  title = "Marcha eslava"
  composer = "Peter Ilyitch Tchaikovsky (1840-1893)"
  subsubtitle = "Tonalidad de La menor"
  opus = ""

}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  e2-5\mf ( dis4 c8 b | a2. ) b8-2 ( c | e4 e dis c8 b | a2. ) r4 |
  \break
  b4 ( d c b | a8-1 gis\2 a-1 b c4 a ) | e'8-5 ( e dis4 c b8 a | b2. ) r4 |
  \break
  e2-5\f ( dis4 c8 b | a2. ) b8-2 ( c | e4 e dis c8 b | a2. ) r4 |
  \break
  b4-2 (  d c b | a8-1 gis\2 a-1 b c4 a ) | e'-5 ( \< e dis c8 b | a1 \! ) |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r4 <e-1 a,-5>4 r4 <f-1 a,-5> | r <e a,> q r | r q r <f a,> | r <e a,> q q |
  r4 <f a,> r q | r <e a,> r q | e2-3 ( fis | gis4-1 ) e-3-. e-. e-. |
  r4 <e-1 a,-5> r <f-1 a,-5> | r <e a,> q r | r q r <f a,> | r <e a,> q q |
  r4 <f a,> r q | r <e a,> r q | e2-2 f | r2\sustainOn q2-> \sustainOff |
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