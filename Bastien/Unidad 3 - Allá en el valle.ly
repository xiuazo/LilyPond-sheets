\version "2.24.3"

\header {
  title = "Allá en el valle"
  composer = "Canción folklórica"
}

global = {
  \key c \major
  \time 3/4
  \tempo "Moderato (Moderadamente)"
}

right = \relative c'' {
  \global

  r c,-1 d | e2. | c | e4 d c | d2. ~ | d
  \break
  r4 b\1 d-2 | g2. | g | f4 e d | c2. ~ | c
  \fine
}

left = \relative c' {
  \global
  \set fingeringOrientations = #'(down)

  < g-1 >4 r r | r <c, e g> q | r q q | R2. | r4 <b f' g> q | q2. |
  \break
  g'4 r r | r q q | r q q | R2. | r4 <c, e g> q | q2. |
  \fine
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
