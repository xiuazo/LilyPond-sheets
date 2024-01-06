\version "2.24.3"

\header {
  title = "Cascabel"
  composer = "J. Piermont"
}

global = {
  \time 4/4
  \tempo "Vivo"
  \key f \major
}

upper = \relative c'' {
  \global
  \repeat volta 2 {
    a-3\staccato a\staccato a\staccato r
    a\staccato a\staccato a\staccato r
    a \( c f,4. g8
    a2. \) r4
    bes\staccato bes\staccato bes4.\staccato bes8\staccato
    \break
    bes4\staccato a\staccato a\staccato a8\staccato a\staccato

    %
    \alternative {
      \volta 1 {
        a4\staccato g\staccato g\staccato a\staccato
        g2 ( c )
      }

      %
      \volta 2 {
        c4\staccato c\staccato bes\staccato g\staccato
        f2.\staccato r4
      }
    }
  }
  \fine
}

lower = \relative {
  \global
  \clef bass

  \repeat volta 2 {
    <f a c>4\staccato r4 r2
    q4\staccato r4 r2
    q4\staccato r4 r2
    q4\staccato r4 q4\staccato r4
    <f bes d>4 r4 r2
    <f a c>4\staccato r4 r2

    \alternative {
      \volta 1 {
        <g-4 b-2>4\staccato r4 r2
        <e bes' c>4\staccato r4 r2
      }
      \volta 2{
        <e bes' c>4\staccato r4 r2
        <f a c>4\staccato r4
        q\staccato r4
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
  \midi { \tempo 4 = 150 }
}