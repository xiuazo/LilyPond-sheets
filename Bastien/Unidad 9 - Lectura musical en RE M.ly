\version "2.24.3"

\header {
  title = "Lectura musical en RE M"
  composer = ""
  opus = ""

}

global = {
  \time 4/4
  \tempo ""
  \key d \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  d8-1\fp ( e fis g a4\staccato ) a\staccato | R1 | e4 ( a e a | d,2. ) r4 |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  R1 | d8-5 ( e fis g a4\staccato ) a\staccato | <cis, g' a>\staccato r4 q\staccato r4 | <d fis a>2. r4 |
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  a8-5 \fp (  g fis e fis4 d4 | g-3 b b2 ) | a8-5 ( g fis e fis4 d | e a d,2 ) |
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r2 <d fis a>2 | <d g b>1 | r2 <d fis a>2 | <cis g' a> <d fis a> |
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

upper = \relative c' {
  \global
  \clef treble
  \time 6/8
  % music goes here
  R1*6/8\fp | d8-1 ( e fis g4. ) | a8 ( g fis e4 fis8 | d4. ~ d4 )  r8
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \time 6/8
  \set fingeringOrientations = #'(down)
  % music goes here
  <d-5>8 ( e fis g4. ) | R1*6/8 | a8 ( g fis e4 fis8 | d4. ~ d4 ) r8 |
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