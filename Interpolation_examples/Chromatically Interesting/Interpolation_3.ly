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
    c16 [ b g fis f' des' ]
    c' [ b' g' fis' f'' des'' ]
    c'' [ b'' g'' fis'' f''' des''' ]
    c''' [ des''' f''' fis'' g'' b'' ]
    c'' [ des'' f'' fis' g' b' ]
    c' [ des' f' fis g b ]
    c
    r8
    \bar ""
    \break

%partitura1
\clef treble
    c16 [ b e fis f' des' ]
    c' [ b' e' fis' f'' des'' ]
    c'' [ b'' e'' fis'' f''' des''' ]
    c''' [ des''' f''' fis'' e'' b'' ]
    c'' [ des'' f'' fis' e' b' ]
    c' [ des' f' fis e b ]
    c
    r8
    \bar ""
    \break

%partitura2
\clef treble
    c16 [ b e fis f' bes ]
    c' [ b' e' fis' f'' bes' ]
    c'' [ b'' e'' fis'' f''' bes'' ]
    c''' [ bes'' f''' fis'' e'' b'' ]
    c'' [ bes' f'' fis' e' b' ]
    c' [ bes f' fis e b ]
    c
    r8
    \bar ""
    \break

%partitura3
\clef treble
    c16 [ d e fis gis bes ]
    c' [ d' e' fis' gis' bes' ]
    c'' [ d'' e'' fis'' gis'' bes'' ]
    c''' [ bes'' gis'' fis'' e'' d'' ]
    c'' [ bes' gis' fis' e' d' ]
    c' [ bes gis fis e d ]
    c
    r8
    \bar ""
    \break

%partitura4
\clef treble
    c16 [ d e fis gis bes ]
    c' [ d' e' fis' a' bes' ]
    c'' [ d'' e'' fis'' gis'' bes'' ]
    c''' [ bes'' gis'' fis'' e'' d'' ]
    c'' [ bes' gis' fis' e' d' ]
    c' [ bes gis fis e d ]
    c
    r8
    \bar ""
    \break

%partitura
\clef treble
    c16 [ d e fis a bes ]
    c' [ d' e' fis' a' bes' ]
    c'' [ d'' e'' fis'' a'' bes'' ]
    c''' [ bes'' a'' fis'' e'' d'' ]
    c'' [ bes' a' fis' e' d' ]
    c' [ bes a fis e d ]
    c
    r8
    \bar ""
    \break

%partitura6
\clef treble
    c16 [ d ees fis a bes ]
    c' [ d' ees' fis' a' bes' ]
    c'' [ d'' ees'' fis'' a'' bes'' ]
    c''' [ bes'' a'' fis'' ees'' d'' ]
    c'' [ bes' a' fis' ees' d' ]
    c' [ bes a fis ees d ]
    c
    r8
    \bar ""
    \break

%partitura7
\clef treble
    c16 [ d ees fis a e' ]
    c' [ d' ees' fis' a' e'' ]
    c'' [ d'' ees'' fis'' a'' e''' ]
    c''' [ e''' a'' fis'' ees'' d'' ]
    c'' [ e'' a' fis' ees' d' ]
    c' [ e' a fis ees d ]
    c1
}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}
