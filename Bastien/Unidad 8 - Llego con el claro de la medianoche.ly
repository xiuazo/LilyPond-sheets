\version "2.24.3"

\header {
  title = "Llego con el claro de la medianoche"
  composer = "Richard S. Willis"
  opus = ""

}

global = {
  \time 6/8
  \tempo "Con fluidez"
  \key c \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  \partial 8 g8-1\mp ( | e'4-5 b8-2 d-4 c a-2 | g4-1 a8   g4 ) g8 ( | a8-2 b c-4 c\3 d e |
  \break
  d4. ~d4 g,8-1 | e'4-5 b8-2 d-4 c a-2 | g4-1 a8 g4 ) g8 ( | a4 a8 b a g | \partial 1*5/8 c4. ~ c4 ) |
  \fine

}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  \partial 8 r8 | <c e g>4. <c f a> | <c e g> ~ q4 r8 |f4.-4 fis-3 |
  <g b>4. ~ q4 r8 | <c, e g>4. <c f a> | <c e g> ~ q4 r8 | f4.-2 g | <c, e>4. ~ q4 |
  \fine

}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
  \midi { \tempo 4 = 150 }
}
