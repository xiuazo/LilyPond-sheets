\version "2.24.3"

\header {
  title = "Retornando"
  composer = "Antonin Dvořák (1841-1904)"
  opus = ""

}

global = {
  \time 4/4
  \tempo "Largo (muy lento)"
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  e4.-3\mp ( g8 g2 | e4. d8 c2 | d4. e8 g4. e8 |  d2. ) r4 | e4. ( g8 g2
  \break
  e4. d8 c2 | d4 e d4. c8 | c2. ) r4 | a'4.-3\mf ( c8 c2  b4 g a2 |
  \break
  a4 c b g | a2. ) r4 e4.-3\mp ( g8 g2 | e4. d8 c2 | d4. e8 g4. e8 |
  \break
  d2. ) r4 | e4. ( g8 g2 | e4. d8 c2 | d4 e d4. c8 | c2. ) r4 |
  \fine

}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  c1-5 | g' | <g-1 b,-5> ~ |  q2. r4 | c,1-5
  g'1 | <g-1 b,-5> | <c, e g>2. r4 | f1-2 | g2 f |
  f g | f2. r4 | c1-5 | g' | <g b,> ~ | q2. r4 |
  c,1 | g' | <g b,> | <c, e g>2. r4
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