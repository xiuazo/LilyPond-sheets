\version "2.24.3"

\header {
  title = "Lleva una cinta amarilla"
  composer = "Tradicional"
}

global = {
  \time 2/2
  \tempo "Tiempo de marcha vivo"
  \key c \major
}

upper = \relative c'' {
  \global
  \clef treble

  g2.-4\mf ( e4
  g2. e4
  g4. a8 g4 f
  e g2 ) g4-4 (
  c,-1 c c d

  \break

  e4-3 g2-4 g4
  a d, d e
  d2. ) e4 (
  g2. e4
  g2. e4

  \break

  g4. a8 g4 f
  e g2 ) g4-5 (
  c,4 c c d
  e g g f
  e2 d4. d8
  c2
  )

  % CORO
  \break
  \bar ".|:"
  \repeat volta 2 {
    c'4.-5\f ( b8
    f1 ~
    f2 )
    c'4. ( a8
    g1 ~
    g2. ) g4 (
    \break
    c,4 c c d
    e g g f
    e2 d4. d8
    \alternative {
      { c2 ) }
      { c2. r4 }
    }
  }
  \fine
}

lower = \relative c {
  \global
  \clef bass

  \chordmode {
    c,4\staccato r q\staccato r
    q\staccato r q\staccato r
    q\staccato r q\staccato r
    q\staccato r q\staccato r
    q\staccato r q\staccato r

    c,\staccato r q\staccato r
    <c f a>\staccato r q\staccato r
    <b, f g>\staccato r q\staccato r
    c,\staccato r q\staccato r
    q\staccato r q\staccato r

    c,\staccato r q\staccato r
    q\staccato r q\staccato r
    q\staccato r q\staccato r
    q\staccato r <c f a>\staccato r
    c,\staccato r <b, f g>\staccato r
    c,2

    \repeat volta 2 {
      r2
      r2 <c f a>4. q8
      q2 r2
      r2 c,4. q8
      q2. r4

      q4\staccato r q\staccato r
      q\staccato r <c f a>\staccato r
      c,\staccato r <b, f g>\staccato r

      \alternative {
        { c,2 }
        { c,4\staccato r q\staccato r }
      }
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
  \midi { \tempo 4 = 200 }
}