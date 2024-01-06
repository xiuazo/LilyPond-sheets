\version "2.24.3"

\header {
  title = "Fly me to the moon"
  composer = "pianote yt video (How to play piano, first lesson)"
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  c'4 b a g
  f4 g a c
  b4 a g f
  e1
}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  <a e'>1
  <d a>1
  <g d>1
  <c, g>1
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