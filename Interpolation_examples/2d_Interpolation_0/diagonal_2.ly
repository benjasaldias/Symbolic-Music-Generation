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

%partitura4
\clef treble
    c16 [ ees ees, aes ]
    c [ d' e' g' b, ]
    c'' [ ees'' f'' aes'' b'' d''' e''' g''' d''' ]
    c'''' [ d''' g''' e''' d''' b'' aes'' f'' ees'' ]
    c'' [ b, g' e' d' ]
    c [ aes ees, ees ]
    c
    r8
    \bar ""
    \break

%partitura8
\clef treble
    c16 [ ees bes, aes b d' e' g' bes' ]
    c'' [ ees'' bes' aes'' b'' d''' e''' g''' d''' ]
    c'''' [ d''' g''' e''' d''' b'' aes'' bes' ees'' ]
    c'' [ bes' g' e' d' b aes bes, ees ]
    c
    r8
    \bar ""
    \break

%partitura12
\clef treble
    c16 [ cis e gis b dis' e' f' b' ]
    c'' [ cis'' g'' gis'' a'' dis''' e''' f''' b''' ]
    c'''' [ b''' f''' e''' dis''' a'' gis'' g'' cis'' ]
    c'' [ b' f' e' dis' b gis g cis ]
    c
    r8
    \bar ""
    \break

%partitura16
\clef treble
    c16 [ f e fis gis dis' ]
    c' [ f' b' fis' gis' des'' ]
    c'' [ f'' e'' fis'' gis'' des''' ]
    c''' [ des''' gis'' fis'' e'' f'' ]
    c'' [ des'' gis' fis' b' f' ]
    c' [ dis' gis fis e f ]
    c
    r8
    \bar ""
    \break

%partitura20
\clef treble
    c16 [ f e a gis des' ]
    c' [ f' e' fis' gis' des'' ]
    c'' [ f'' e'' a'' gis'' des''' ]
    c''' [ des''' gis'' a'' e'' f'' ]
    c'' [ des'' gis' a' g' f' ]
    c' [ des' gis fis e f ]
    c
}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}