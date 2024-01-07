\version "2.24.3"

\header {
  title = "El lago de los cisnes"
  subtitle = "Tonalidad de Re menor"
  composer = "Peter Tchaikovsky"
  arranger = "James Bastien"
}

global = {
  \time 4/4
  \tempo "Andante"
  \key f \major
}

upper = \relative c'' {
  \global
  \clef treble
  % music goes here
  \repeat segno 2 {
    a2-5\p ( d,8 e f g | a4. f8 a4. ) f8 ( | a4. d,8 f-5 d-3 bes f' | d2-3-1 ~ d8 ) g ( f e |
    \break
    a2-5 d,8 e f g | a4. f8 a4. ) f8 ( | a4. d,8 f-5 d-3 bes f' | \partial 1*3/4 d2. ) |
    \break
    \volta 2 { \fine }
    \volta 1 {
      \crescTextCresc
      \partial 4 d4-1\p ( | e f g-1 a8 bes | c4. bes8 a4 ) bes8-3 \< ( c \! | d4.-5 c8-3 bes4 )  c8-3 ( d | e4.\mf d8 a2 ) |
      \break
      e4-2\p ( f-3 g-1 a8 bes | c4. bes8 a4 ) bes8-3\< ( c \!| d4.-5 c8-3 bes4 ) c8 ( d | ees4.-5 bes8-2 g4-1 ) bes8-2 ( ees-4 | e!4.-5\f b!8-"rit" e4. ) a,8-1
    }
  }

}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)

  % music goes here
  \repeat segno 2 {
    r4 <d-5 f-3 a-1> r q | r q r q | r q <aes'-2> <g-1> | <d-5> <f-3 a-1> q r |
    r4 <d f a> r q | r q r q | r q <aes'-2> <g-1> | \partial 1*3/4 d <f a> q |
    \volta 2 { \fine }
    \volta 1 {
      \partial 4 r4 | c'2 d | a1 | <g bes> | <e-5 gis b>2 <a-2 cis-1>2 |
      <c-1>2 bes | a1 | <g bes> | <des-5> | <e! gis b>2 <a-2 cis-1>2 |
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
      \new Staff = "upper" \with { midiInstrument = "acoustic grand" } { \upper }
      \new Staff = "lower" \with { midiInstrument = "acoustic grand" } { \lower }
    >>
  }
  \midi { \tempo 4 = 120 }
}