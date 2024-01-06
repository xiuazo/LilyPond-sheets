\version "2.24.3"

\header {
  title = "Vamos a bogar"
  composer = ""
  opus = ""

}

global = {
  \time 6/8
  \tempo "Vivo"
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble
  % music goes here
  c4.-1\mf c | c4 d8 e4. | e4 d8 e4 f8  g4. ~g |
  \break
  c8-4 c c g-1 g g | e-1 e e c-3 c c | g'4-5 f8 e4 d8 | c4. ~ c

  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" { \upper }
  >>

  \layout { }
  \midi { \tempo 4 = 200 }
}
