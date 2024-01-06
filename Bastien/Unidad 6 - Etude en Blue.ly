\version "2.24.3"

\header {
  title = "Etude en \"Blue\""
}

global = {
  \time 4/4
  \tempo "Moderato"
  \key c \major
}

right = \relative {
  \global

  r2\mf c'4-1 (  e8 g )
  ees4 ( e8 g c,2 )
  r2 f4-1 ( a8 c )
  aes4-2 ( a8-3 c f,2 )
  \break

  r4\f bes8-2 ( b-3 d g, ) r4
  r4 aes8-2 ( a-3 c f, ) r4
  r2\mf c4-1 ( e8 g)
  f4-4 ( ees8-3 c ~c2 )
  \fine
}

left = \relative {
  \global
  \clef bass

  c4-5 ( e8 g ) r2
  r2 r4 < c, e g >\staccato
  f4 ( a8 c ) r2
  r2 r4 <f, a c>4\staccato

  <g b d>2 r4 q4\staccato
  <f a c>2 r4 q4\staccato
  c4 ( e8 g ) r2
  r2 r4 <c, e g>4\staccato
  \fine
}

music = {
  <<
    \new Staff = "right" \right
    \new Staff = "left" \left
  >>
}

\score {
  \music
  \layout { }

}
\score {
  \unfoldRepeats \music
  \midi { \tempo 4= 150 }
}