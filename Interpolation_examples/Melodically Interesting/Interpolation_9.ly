\version "2.22.2"
\header {
title = "Interpolation"
composer = "Benjamín Saldías"
}

\score {
  <<
    \cadenzaOn
    \override Beam.breakable = ##t

{

%partitura0
\clef treble
    c16 [ cis a fis f ees' ]
    c' [ b a' fis' gis' ees'' ]
    c'' [ b' ees'' fis'' cis'' g'' ]
    c''' [ a'' cis'' fis'' ees'' b' ]
    c'' [ ees'' cis' fis' a' b ]
    c' [ ees' f fis a cis ]
    c
    r8
    \bar ""
    \break

%partitura1
\clef treble
    c16 [ cis a fis gis ees' ]
    c' [ b e' fis' gis' ees'' ]
    c'' [ b' ees'' fis'' gis'' g'' ]
    c''' [ g'' gis'' fis'' ees'' b' ]
    c'' [ ees'' cis' fis' a b ]
    c' [ ees' gis fis a cis ]
    c
    r8
    \bar ""
    \break

%partitura2
\clef treble
    c16 [ cis e fis gis ees' ]
    c' [ b e' fis' gis' ees'' ]
    c'' [ b' e'' fis'' gis'' g'' ]
    c''' [ g'' gis'' fis'' e'' b' ]
    c'' [ ees'' gis' fis' e' b ]
    c' [ ees' gis fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura3
\clef treble
    c16 [ cis e fis gis g ]
    c' [ bes' e' fis' gis' b' ]
    c'' [ b' e'' fis'' gis'' g'' ]
    c''' [ g'' gis'' fis'' e'' b' ]
    c'' [ b' gis' fis' e' bes' ]
    c' [ g gis fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura4
\clef treble
    c16 [ cis e fis gis g ]
    c' [ bes' e' fis' gis' b' ]
    c'' [ bes'' e'' fis'' gis'' g'' ]
    c''' [ g'' gis'' fis'' e'' bes'' ]
    c'' [ b' gis' fis' e' bes' ]
    c' [ g gis fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura5
\clef treble
    c16 [ cis ees e gis g ]
    c' [ bes' e' ]
    c' [ gis' ees' ]
    c'' c' [ g' gis' gis'' b' ]
    c''' [ b' gis'' gis' g' ]
    c' c'' [ ees' gis' ]
    c' [ e' bes' ]
    c' [ g gis e ees cis ]
    c
    r8
    \bar ""
    \break
    
%partitura6
\clef treble
    c16 [ bes ees e gis g gis e b ]
    c' [ gis' ees' e' ]
    c' [ g' gis' gis'' b' ]
    c'' [ b' gis'' gis' g' ]
    c' [ e' ees' gis' ]
    c' [ b e gis g gis e ees bes ]
    c
    r8
    \bar ""
    \break

%partitura7
\clef treble
    c16 [ bes ees e ]
    c [ g gis e b ]
    c' [ gis' ees' e' ]
    c' [ g' gis' e' b' ]
    c'' [ b' e' gis' g' ]
    c' [ e' ees' gis' ]
    c' [ b e gis g ]
    c [ e ees aes, ]
    c
    r8
    \bar ""
    \break

%partitura8
\clef treble
    c16 [ bes, ees e ]
    c [ g gis e b ]
    c' [ aes ees' e' ]
    c' [ g' gis' e' b' ]
    c'' [ b' e' gis' g' ]
    c' [ e' ees' aes ]
    c' [ b e gis g ]
    c [ e ees aes, ]
    c
    r8
    \bar ""
    \break

%partitura9
\clef treble
    c16 [ bes, ees e ]
    c [ g gis e b ]
    c' [ aes ees' e' ]
    c' [ g' gis' fis' b' ]
    c'' [ b' fis' gis' g' ]
    c' [ e' ees' aes ]
    c' [ b e gis g ]
    c [ e ees bes, ]
    c
}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}
