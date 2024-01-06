\version "2.24.3"

\header {
  title = "Porque él es un buen amigo"
  composer = "Canción inglesa"
}

global = {
  \key c \major
  \tempo "Vivamente"
  \time 3/4
}

upper = \relative c' {
  \global


  \repeat segno 2 {
    \partial 4 c-1\f | e2 e4 | e d e | f2. | e2 e4 | d2 d4 |
    \break
    d c d | e2. | c2 c4 | e2 e4 | e d e |
    \break
    f2. | a2-5\fermata a4-5 | g-4 g g | f2-3 d4-2 | c2.~ | \partial 2 c2 |
    \break

    \volta 2 \fine
    \volta 1 {
      \partial  4 <e\2>4
      g-4 g g
      a2 a4
      g2.~
      g4 r
    }
  }
}

lower = \relative c'' {
  \global

  \repeat segno 2 {
    \partial 4 r4
    \chordmode { c'2.~ }
    q
    <c f a>

    \chordmode { c'2. }
    <b f' g>~
    q
    \chordmode { c'2.~ }

    q2 r4
    \chordmode { c'2.~ }
    q
    <c f a>2.~

    q2\fermata r4
    \chordmode { c'2. }
    <b f' g>
    \chordmode { c'2.~ }

    \partial 2 \chordmode { c'2 }
    \volta 2 \fine
    \volta 1 {
      \partial 4 r4
      R2.
      R
      R
      \chordmode { c'4 } r4
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
      \new Staff = "upper" { \upper }
      \new Staff = "lower" { \lower }
    >>
  }

  \midi { \tempo 4 = 180 }
}
