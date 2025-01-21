
\version "2.22.2"
\header {
title = "Interpolation"
composer = "Symbolic Music Generation"
}

\score {
  <<
    \cadenzaOn
    \override Beam.breakable = ##t

{

%partitura0
\clef treble
    c16 [ cis fis e bes fis gis fis' d' ]
    c' [ d'' fis'' e' bes'' fis' gis' fis''' bes' ]
    c'' [ bes' fis''' gis' fis' bes'' e' fis'' d'' ]
    c' [ d' fis' gis fis bes e fis cis ]
    c
    r8
    \bar ""
    \break

%partitura1
\clef treble
    c16 [ cis fis e bes fis gis fis' d' ]
    c' [ d'' fis'' e' bes'' fis' gis' fis''' bes' ]
    c'' [ bes' fis''' gis' fis' bes'' e' fis'' d'' ]
    c' [ bes fis' gis fis bes e fis cis ]
    c
    r8
    \bar ""
    \break

%partitura2
\clef treble
    c16 [ cis d e bes fis gis fis' g' ]
    c' [ d'' fis'' e' bes'' fis' gis' fis''' bes' ]
    c'' [ bes' fis''' gis' fis' bes'' e' fis'' d'' ]
    c' [ g' fis' gis fis bes e fis cis ]
    c
    r8
    \bar ""
    \break

%partitura3
\clef treble
    c16 [ cis d e bes fis gis fis' g' ]
    c' [ d'' d' e' bes'' fis' gis' fis''' bes' ]
    c'' [ bes' fis''' gis' fis' bes'' e' d' d'' ]
    c' [ g' fis' gis fis bes e d cis ]
    c
    r8
    \bar ""
    \break

%partitura4
\clef treble
    c16 [ d d e bes fis gis fis' g' ]
    c' [ bes' d' e' ]
    c' [ fis' gis' fis''' bes' ]
    c'' [ bes' fis''' gis' fis' ]
    c' [ e' d' bes' ]
    c' [ g' fis' gis fis bes e d d ]
    c
    r8
    \bar ""
    \break

%partitura5
\clef treble
    c16 [ d b e bes fis gis fis' g' ]
    c' [ bes' ees e' ]
    c' [ fis' gis' fis''' g'' ]
    c'' [ b fis''' gis' fis' ]
    c' [ e' ees bes' ]
    c' [ g' fis' gis fis bes e b d ]
    c
    r8
    \bar ""
    \break

%partitura6
\clef treble
    c16 [ d b e bes ees' gis fis' b, ]
    c' [ bes' ees e' ]
    c' [ g gis' e' b ]
    c'' [ b e' gis' g ]
    c' [ e' ees bes' ]
    c' [ b, fis' gis ees' bes e b aes, ]
    c
    r8
    \bar ""
    \break

%partitura7
\clef treble
    c16 [ aes, b e ]
    c [ ees' gis fis' b, ]
    c' [ bes' ees e' ]
    c' [ g gis' e' b ]
    c'' [ b e' gis' g ]
    c' [ e' ees bes' ]
    c' [ b, fis' gis ees' bes e b aes, ]
    c
    r8
    \bar ""
    \break

%partitura8
\clef treble
    c16 [ aes, b e ]
    c [ ees' gis e b, ]
    c' [ aes b' e' ]
    c' [ g gis' e' b ]
    c'' [ b e' gis' g ]
    c' [ e' ees aes ]
    c' [ b, e gis ees' ]
    c [ e g aes, ]
    c
    r8
    \bar ""
    \break
}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}

