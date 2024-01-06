\version "2.24.3"

\header {
  title = "Etude en sol mayor"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo "Moderato"
  \key g \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  g4-1\mf \< a-2 b-3 c\1 | d-2 e fis g \! | e2 \> g | d2. \! r4 |
  \break
  g4-5\f fis-4 e-3 d-2 | c-1 b\3 a-2 g | a2 d | d2. r4 |
  \break
  R1\mf \< | d,4 e fis g \! | e2 \> g | d2. \! r4 |
  \break
  g4\f \> fis e d | R1 |  c'1-4 \! | <g b>
  \fine
}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  R1 | R1 | c'-2 | b2. r4 |
  R1 | R1 | d ~ | d2. r4 |
  g,4-5 a-4 b-3 c-2 | R1 | g1-4 | d2. r4 |
  R1 | c'4 b a g | a2 d | g,1
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