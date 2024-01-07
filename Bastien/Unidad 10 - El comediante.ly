\version "2.24.3"

\header {
  title = "El comediante"
  composer = "Scott Joplin"
  arranger = "James Bastien"
  opus = ""

}

global = {
  \time 2/2
  \tempo "Moderato"
  \key c \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c''  {
  \global
  \clef treble

  % music goes here
  \ottava #1
  d'4-4\f ( e c-3 a-1 ~ | a b-2 g ) \ottava #0 r | d-4 ( e c a ~ | a b g ) r |
  \break
  d-2 e c r | R1 | R1 | <b' f' g>4-> r d,-1 \< ( dis-2 \! |
  \break
  e4-1 c'2 e,4 | c'2 e,4 c'~ | c1 ) | r4 c-1 ( \< d dis |
  \break
  e\f c-2 d e~ | e b d2 | c1~ | c4 ) r d,-1 ( \> dis-2 \! |
  \break
  e4\p c'2 e,4 | c'2 e,4 c'4~ | c1~ | c4 ) r a-2 \< ( g \! |
  \break
  fis4-2\f a-1 c e~ | e d c a | d1~ | d4 ) r d,-1 \> ( dis-2 \! | e-1\p c'2 e,4 |
  \break
  c'2 e,4 c'~ | c1 ) | r4 c-1 \< ( d dis \! | e\f c-2 d e~ | e b d2 |
  \break
  \override DynamicTextSpanner.style = #'none
  \crescTextCresc
  c1~ | c4 ) r c-1\< ( d \! | e c d e~ | e c d c | e c d e~ |
  \break
  e c d c | e c d e~ |  e b-1 d2-3 | c1~ | \partial 4 c4 ) |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)

  % music goes here
  R1 | R1 | R1 | R1 |
  r2 r4 <a'-2>4 ~ | a  b a aes | g2 r2 | g,4-> r r2 |
  <c-5>4-. r4 r2 | <e-4 bes'-1>4-. r r2 | <f-3 a-1>4-. r q-. r | <e-4 g-2>-. r r2 |
  g,4-5 r r2 | g4 r r2 | <c e>4-. r q-. r | q-. r r2 |
  c4-5-. r r2 | <e-4 bes'-1>4-. r r2 | <f a>4-. r q-. r | <e-4 g-2>-. r r2 |
  d4-. r r2 | d4-. r r2 | <g b>4-. r <g,-5>-. r | a4-. r b-. r | <c-2>-. r r2 |
  <e-4 bes'-1>4-. r r2 | <f-3 a-1>4-. r q-. r | <e-4 g-2>-. r r2 | <g,-5>4-. r r2 | g4-. r r2 |
  <c e>4-. r q-. r | q-. r r2 | <c e g>4-. r r2 | <e-5 bes'-2 c-1>4-. r r2 | <f-5 a-3 c-1>4-. r r2 |
  <f aes c>4-. r r2 | <a,-5>4-. r r2 | g4-. r r2 | <c e>4-. r <g-1>-. r | c,-. |

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
  \midi { \tempo 4 = 180 }
}