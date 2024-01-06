\version "2.24.3"

\header {
  title = "Sobre las olas"
  composer = "Juventino Rosas"
  opus = ""

}

global = {
  \time 3/4
  \tempo "Tiempo de vals moderato"
  \key c \major
  \set Staff.pedalSustainStyle = #'bracket
}

upper = \relative c' {
  \global
  \clef treble

  e2.-1\mf ( | dis4-2 e-1 g-2 | c2.-5 ~ | c4 b-3 c |
  \break
  d c b | c-4 e,-1 g-2 | b2.-4 ~ | b4 ) r r |
  \break
  f2.-2 ( | e4 f g | b2. ~| b4 ais-3 b |
  \break
  c4 b ais | b-4 f-1 b-4 | e,2.-1 ~| e4 ) r r |
  \break
  e2.-1 ( | dis4-2 e-1 g-2 | c2. ~ | c4 b-3 c |
  \break
  d c b | c-4 e,-1 a-3 | a2. ~ | a4 ) r r |
  \break
  a2.-1 ( | d4-2 f-3 a-5-"La" | g2. ~ | g4 f-3 e |
  \break
  d-1 c-3 b | a b d | c2. ~ | c2. ) |

  \fine
}

lower = \relative c {
  \global
  \clef bass
  \set fingeringOrientations = #'(down)
  % music goes here
  r4\sustainOn <c e g>\staccato q\staccato\sustainOff | R1*3/4 | r4\sustainOn q\staccato q\staccato | q\staccato\sustainOff r r |
  c\sustainOn ( <e g>\sustainOff ) r | c\sustainOn ( <e g>\sustainOff ) r4 | r4\sustainOn <d-4 f-2 g-1>\staccato q\staccato | q\staccato\sustainOff r r |
  r4\sustainOn q\staccato q\staccato\sustainOff | R1*3/4 | r4\sustainOn q\staccato q\staccato | q\staccato\sustainOff r r |
  d4-4\sustainOn ( <f-2 g-1>\sustainOff ) r | d\sustainOn ( q\sustainOff ) r | c-5\sustainOn g'-2 a | g\sustainOff r r |
  r4 <c, e g>\staccato\sustainOn q\sustainOff | R1*3/4 | r4\sustainOn q\staccato q\staccato | q\staccato\sustainOff r r |
  c\sustainOn ( <e g>\sustainOff ) r | c\sustainOn ( <e g>\sustainOff ) r | r\sustainOn <c-5 f-2 a-1>\staccato q\staccato | q\staccato\sustainOff r r |
  r4\sustainOn q\staccato q\staccato\sustainOff | R1*3/4 | r4\sustainOn <c e g>\staccato q\staccato | q\staccato\sustainOff r r |
  d-4 \sustainOn ( <f-2 g-1>\sustainOff ) r | g,\sustainOn r\sustainOff r | c\sustainOn g' e | c2. |

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