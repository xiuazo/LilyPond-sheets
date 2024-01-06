\version "2.24.3"

\header {
  title = "Desamor"
  composer = "Cancion folklorica de Tennessee"
}

global = {
  \time 2/2
  \tempo "Moderadamente lento"
  \key f \major
}

upper = \relative c'' {
  \global
  \clef treble

  a2.-5\mf \( f4-3
  e-2 c-1 e-2 g-4
  f1 ~
  f2. r4 \)

  \break

  a2.-2 \( bes4
  c c d c
  g1 ~
  g2. \) gis4-2 \(

  \break

  a2.-1 \) bes4-2 \(
  c2. \) cis4 \(
  d2-5\f bes-3
  f-1 \) f4-3 \( g % dim

  \break

  a2. f4
  e c e g
  f1\mp ~ % rit
  f1 \)
  \fine
}

lower = \relative c {
  \global
  \clef bass

  <f a c>2 q
  <c e g> q
  <f a c> aes4-3 g
  f2 f

  <f a c> q
  q q
  <c e g> ees4-3 d
  c2 c2

  <f a c>2 q % cresc
  <f a ees'> q
  <f-5 bes-3 d-1> q
  <f-5 bes-2 des-1> q

  <f a c> q
  <c e g> q
  <f a c> aes4 g
  f1
  \fine
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi { \tempo 4=150 }
}