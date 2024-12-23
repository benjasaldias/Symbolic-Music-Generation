
\version "2.22.2"
\header {
title = "Interpolation 10"
composer = "Benjamín Saldías"
}

\score {
  <<
    \cadenzaOn
    \override Beam.breakable = ##t

{

%scale 0{
    \clef treble
    c16 [ ees ees e a b gis b dis' ]
    c' [ a' bes' e' g' b' gis' b' dis'' ]
    c'' [ dis'' b' gis' b' g' e' bes' a' ]
    c' [ dis' b gis b a e ees ees ]

%scale 1{
    \clef treble
    c16 [ ees ees e dis b gis b dis' ]
    c' [ a' bes' e' g' d'' gis' b' fis'' ]
    c'' [ fis'' b' gis' d'' g' e' bes' a' ]
    c' [ dis' b gis b dis e ees ees ]

%scale 2{
    \clef treble
    c16 [ ees bes e dis d' gis g fis' ]
    c' [ a' bes' e' dis' d'' gis' g' fis'' ]
    c'' [ fis'' b' gis' d'' dis' e' bes' a' ]
    c' [ fis' g gis d' dis e bes ees ]

%scale 3{
    \clef treble
    c16 [ b, fis e dis d' gis g fis' ]
    c' [ b bes' e' dis' b gis' g' fis'' ]
    c'' [ fis'' g' gis' b dis' e' bes' b ]
    c' [ fis' g gis d' dis e fis ees ]

%scale 4{
    \clef treble
    c16 [ b, fis e dis b, gis g d' ]
    c' [ b bes' e' dis' b gis' g' fis'' ]
    c'' [ fis'' g' gis' b dis' e' bes' b ]
    c' [ d' g gis b, dis e fis b, ]

%scale 5{
    \clef treble
    c16 [ b, fis e dis b, gis g d' ]
    c' [ b bes' e' dis' b gis' g' ees' ]
    c'' [ ees' g' gis' b dis' e' bes' b ]
    c' [ ees g gis b, dis e fis b, ]

%scale 6{
    \clef treble
    c16 [ b, fis e dis b, gis g ees ]
    c' [ b g e' dis' b gis' g' ees' ]
    c'' [ ees' g' gis' b dis' e' g b ]
    c' [ ees g gis b, dis e fis b, ]

%scale 7{
    \clef treble
    c16 [ g, d e b, fis gis ees ees ]
    c' [ aes d' e' b b gis' ees' ees' ]
    c'' [ ees' ees' gis' b b e' g b ]
    c' [ ees ees gis fis b, e d g, ]

%scale 8{
    \clef treble
    c16 [ g, d e b, fis gis ees bes ]
    c' [ g d' e' b fis' gis' ees' bes' ]
    c'' [ bes' ees' gis' fis' b e' d' g ]
    c' [ bes ees gis fis b, e d g, ]

%scale 9{
    \clef treble
    c16 [ g, d e b, fis gis ees bes ]
    c' [ g d' e' b fis' gis' ees' bes' ]
    c'' [ bes' ees' gis' fis' b e' d' g ]
    c' [ bes ees gis fis b, e d g, ]
    c

}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}
