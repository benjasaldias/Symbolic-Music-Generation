
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
    c16 [ f e ]
    c' [ gis d' ]
    c' [ f' e' ]
    c'' [ gis' e'' ]
    c'' [ a'' e'' e''' gis'' fis'' ]
    c''' [ fis'' gis'' e''' e'' a'' ]
    c'' [ e'' gis' ]
    c'' [ e' f' ]
    c' [ d' gis ]
    c' [ e f ]
    c
    r8
    \bar ""
    \break

%partitura1

\clef treble
    c16 [ f e a gis d' ]
    c' [ f' e' ]
    c'' [ gis' e'' ]
    c'' [ f'' e'' e''' gis'' e''' ]
    c''' [ e''' gis'' e''' e'' f'' ]
    c'' [ e'' gis' ]
    c'' [ e' f' ]
    c' [ d' gis a e f ]
    c
    r8
    \bar ""
    \break

%partitura2

\clef treble
    c16 [ f e a gis d' e' f' e' ]
    c'' [ gis' e'' ]
    c'' [ f'' e'' e''' gis'' e''' ]
    c'''' [ e''' gis'' e''' e'' f'' ]
    c'' [ e'' gis' ]
    c'' [ e' f' e' d' gis a bes f ]
    c
    r8
    \bar ""
    \break

%partitura3

\clef treble
    c16 [ f bes e b d' e' f' bes' ]
    c'' [ gis' ges'' e' f'' d''' e''' f'' e''' ]
    c'''' [ e''' f'' e''' d''' f'' e' ges'' gis' ]
    c'' [ bes' f' e' d' b e bes f ]
    c
    r8
    \bar ""
    \break

%partitura4

\clef treble
    c16 [ f bes e b d' e' f' bes' ]
    c'' [ gis' ges'' e' f'' bes e''' f'' d' ]
    c'''' [ d' f'' e''' bes f'' e' ges'' gis' ]
    c'' [ bes' f' e' d' b e bes f ]
    c
    r8
    \bar ""
    \break

%partitura5

\clef treble
    c16 [ f bes e b d' gis f' bes' ]
    c'' [ g' ges'' e' b' bes gis' ees'' d' ]
    c'' [ d' ees'' gis' bes b' e' ges'' g' ]
    c'' [ bes' f' gis d' b e bes f ]
    c
    r8
    \bar ""
    \break

%partitura6

\clef treble
    c16 [ f g e b d' gis f' g' ]
    c' [ g' ges'' e' b' bes gis' ees'' des''' ]
    c'' [ d' ees'' gis' bes b' e' ges'' g' ]
    c' [ bes' f' gis d' b e g f ]
    c
    r8
    \bar ""
    \break

%partitura7

\clef treble
    c16 [ f g e b d' gis f' g' ]
    c' [ g' b' e' b' g'' gis' ees'' des''' ]
    c'' [ des''' ees'' gis' g'' b' e' b' g' ]
    c' [ g' f' gis d' b e g f ]
    c
    r8
    \bar ""
    \break

%partitura8

\clef treble
    c16 [ g g e b d' gis ees' g' ]
    c' [ g' b' e' b' g'' gis' ees'' des''' ]
    c'' [ des''' ees'' gis' g'' b' e' b' g' ]
    c' [ g' ees' gis d' b e g g ]
    c
    r8
    \bar ""
    \break

%partitura9

\clef treble
    c16 [ g g e b dis' gis ees' g' ]
    c' [ g' b' e' b' g'' gis' ees'' g'' ]
    c'' [ g'' ees'' gis' g'' b' e' b' g' ]
    c' [ g' ees' gis d' b e g g ]
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
