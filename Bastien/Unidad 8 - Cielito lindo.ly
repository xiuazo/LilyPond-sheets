\version "2.24.3"

\header {
  title = "Cielito lindo"
  composer = "Canción folklórica mexicana"
  opus = ""

}

global = {
  \time 6/8
  \tempo "Vivamente"
  \key c \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  c8-4\mf ( c a ~ a b g | c c a ~ a b g | c c a ~ a b g-1 | f\3 d4-1 ~ d ) r8
  \break
  b'8-3 ( b b ~ b a g-1 | f\3 e d ~ d e g-3 | g\1 g g ~ g b-2 d-4 | e c4 ~c ) r8
  \break

  e4.-5\f ( d4 c8 | a2. ) | d4. ( d4 c8 | e8  c4 ~ c ) g8-1\mf ( |
  \break
  a8-2 a g ~ g a g  f'-5 f  d-3 ~ d b-2 g-1 | a-2 a g ~ g b-2 d |  e8 c4 ~ c4. )

  \fine
}

lower = \relative c {
  \global
  \clef bass
  % music goes here
  <c-5 e-3 g-1>4\staccato r8 <d\4 f-2 g-1>4\staccato r8 | <c e g>4\staccato r8 <d f g>4\staccato r8 | <c e g>4\staccato r8 q4\staccato r8 | <d-1 f-3 g-5>4\staccato r8 q4 r8 |
  <d\4 f-2 g-1>4\staccato r8 q4 r8 | q4 r8 q4 r8 | <b-5 f'-2 g-1>4\staccato r8 q4 r8 | <c e g>4\staccato q8\staccato q4\staccato r8
  r8 q-5-3-1\staccato q\staccato r <c-5 e-3 gis-5>\staccato r | r8 <c-5 f-2 a-1>8\staccato q\staccato q4. | r8 <b-5 f'-2 g-1>\staccato q\staccato r8 q\staccato r8 | r4 <c e g>8\staccato q4 r8 |
  q4\staccato r8 q4\staccato r8 | <b f' g>4\staccato r8 q4\staccato r8 | q4\staccato r8 q4\staccato r8 | <c e g>4\staccato q8\staccato q4. |

  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
    \new Staff = "lower" { \lower }
  >>

  \layout { }
  \midi { \tempo 4 = 200 }
}
