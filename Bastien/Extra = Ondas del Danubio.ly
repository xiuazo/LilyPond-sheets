\version "2.24.3"

\header {
  title = "Ondas del Danubio"
  subtitle = "Tonalidad de La menor"
  composer = "Jan Ivanovic"
  arranger = "James Bastien"
}

global = {
  \time 3/4
  \tempo "Moderato"
  \key c \major
}

upper = \relative c' {
  \global
  \clef treble

  % music goes here
  \partial 4 e4-1 (
  \repeat volta 2 {
    e2. ~ | e4 gis-2 a | b2. ~ | b4 gis4 e |
    \break
    c'2.-4 ~ | c4 b a | e'2. ~ | e2 ) e4-4 ( | f2. ~ |
    \break
    f4 e d | e2. ~ | e4 d c | b2. ~ | b4 c-3 b |
    \alternative {
      \volta 1 {
        a2. ~ | a4 ) r e-1
      }
      \volta 2 {
        a2. ~ | a4 r8 e'8-2 \< ( f g \! |
      }
    }
  }
  \break
  \repeat volta 2 {
    a4\f a a | a a a | a g4. fis8 | g2. ) |
    \break
    f4-4 ( f f | f f f | f e4. dis8 | e2. ) |
    \break
    d4-4 ( d d | d d d | d c4. b8 | a2 ) a'4-5 ( | f-4 d-2 b-1 |
    \break
    c2-3 b4 |
    \alternative {
      \volta 1 { a2. ~ | a4 ) r8 e'8-2 \> f g \! }
      \volta 2 { a,2.\mp ~ | a2 }
    }
  }
  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)

  % music goes here
  r4 |
  \repeat volta 2 {
    r4 <e-5 gis-3 d'-1> q | q r r | r q q | q r r |
    r4 <e-5 a-2 c-1> q | q r r | r <a-5 c-3 e-1> q | q2 r4 | d,4-5 ( <f-3 a-1>-. ) q-. |
    d ( q-. ) q | e-5 ( <a-2 c-1>-. ) q | e ( q-. ) q | e-5 ( <gis-3 d'-1>-. ) q | e ( q-. ) q-. |
    \alternative {
      \volta 1 { r4 <a-5 c-3 e-1> q | q r r | }
      \volta 2 { r4 <a-5 c-3 e-1> q | q r r | }
    }
  }
  \repeat volta 2 {
    d,4-5 ( <f-3 g-2 b-1>-. ) q-. | d ( q-. ) q-. | c-5 (<e-3 g-1>-.) q-. | c ( q-. ) q-. |
    d4 ( <f g b>-. ) q-. | d ( q-. ) q-. | c-5 (<e g>-.) q-. | c ( q-. ) q-. |
    e4-5 ( <gis-3 d'-1>-. ) q-. | e (q-.) q-. | a-5 ( <c-3 e-1>-. ) q-. | a ( q ) r | d,-5 ( <f-3 a-1>-. ) q-. |
    e-5 ( <gis-3 d'-1> ) r  |
    \alternative {
      \volta 1 { r4 <a-5 c-3 e-1>4 q | q r r | }
      \volta 2 { r4 <a-5 c-3 e-1>4 q | \partial 2 q2 | }
    }
  }
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