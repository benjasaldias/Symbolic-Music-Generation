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
    c16 [ g, gis e g' fis gis cis'' e' ]
    c' [ g'' gis' e' cis''' e'' gis' g''' dis'' ]
    c'' [ dis'' g''' gis' e'' cis''' e' gis' g'' ]
    c' [ e' cis'' gis fis g' e gis g, ]
    c
    r8
    \bar ""
    \break

%partitura1

\clef treble
    c16 [ g, gis e g' fis gis fis e' ]
    c' [ g'' gis' e' cis''' e'' gis' fis' dis'' ]
    c'' [ dis'' fis' gis' e'' cis''' e' gis' g'' ]
    c' [ e' fis gis fis g' e gis g, ]
    c
    r8
    \bar ""
    \break

%partitura2

\clef treble
    c16 [ bes, gis e d fis gis g e' ]
    c' [ g'' gis' e' cis''' a' gis' fis' dis'' ]
    c'' [ dis'' fis' gis' a' cis''' e' gis' g'' ]
    c' [ e' fis gis fis d e gis g, ]
    c
    r8
    \bar ""
    \break

%partitura3
\clef treble
    c16 [ bes, gis e d fis gis g e' ]
    c' [ bes gis' e' g' a' gis' gis'' e'' ]
    c'' [ dis'' gis'' gis' a' g' e' gis' gis' ]
    c' [ e' g gis fis d e gis bes, ]
    c
    r8
    \bar ""
    \break

%partitura4
\clef treble
    c16 [ bes, gis e d fis gis g e' ]
    c' [ gis' gis' e' g' a' gis' gis'' e'' ]
    c'' [ e'' gis'' gis' a' g' e' gis' gis' ]
    c' [ e' g gis fis d e gis bes, ]
    c
    r8
    \bar ""
    \break

%partitura5
\clef treble
    c16 [ bes, gis e d fis gis g e' ]
    c' [ gis' gis' e' bes' a' gis' gis'' e'' ]
    c'' [ e'' gis'' gis' a' g' e' gis' gis' ]
    c' [ e' g gis fis d e gis bes, ]
    c
    r8
    \bar ""
    \break

%partitura6
\clef treble
    c16 [ bes, gis e d fis gis g e' ]
    c' [ gis' gis' e' bes' ]
    c'' [ gis' gis'' e'' ]
    c'' [ e'' gis'' gis' a' bes' e' gis' gis' ]
    c' [ e' g gis fis d e gis bes, ]
    c
    r8
    \bar ""
    \break

%partitura7
\clef treble
    c16 [ bes, a, e d fis gis g e' ]
    c' [ gis' gis' e' bes' ]
    c'' [ gis' gis'' e'' ]
    c'' [ e'' gis'' gis' ]
    c'' [ bes' e' gis' gis' ]
    c' [ e' g gis fis d e a, bes, ]
    c
    r8
    \bar ""
    \break

%partitura8
\clef treble
    c16 [ bes, a, e gis ]
    c' [ gis g e' ]
    c' [ gis' gis' e' bes' ]
    c'' [ gis' gis'' e'' ]
    c'' [ e'' gis'' gis' ]
    c'' [ bes' e' fis' gis' ]
    c' [ e' g gis ]
    c' [ gis e a, bes, ]
    c
    r8
    \bar ""
    \break

%partitura9
\clef treble
    c16 [ bes, a e gis ]
    c' [ gis g e' ]
    c' [ gis' a' e' bes' ]
    c'' [ gis' gis'' e'' ]
    c'' [ e'' gis'' gis' ]
    c'' [ bes' e' a' gis' ]
    c' [ e' g gis ]
    c' [ gis e a bes, ]
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
