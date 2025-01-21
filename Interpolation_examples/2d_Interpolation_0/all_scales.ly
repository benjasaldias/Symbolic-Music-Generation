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
    c16 [ d fis e ]
    c [ ais gis e d' ]
    c' [ aes fis' e' ]
    c' [ ais' gis' e' d'' ]
    c'' [ d'' e' gis' ais' ]
    c' [ e' fis' d' ]
    c' [ d' e gis ais ]
    c [ e fis d ]
    c
    r8
    \bar ""
    \break

%partitura1
\clef treble
    c16 [ d fis e ]
    c [ d' gis e d' ]
    c' [ aes bes' e' ]
    c' [ ais' gis' e' d'' ]
    c'' [ d'' e' gis' ais' ]
    c' [ e' bes' aes ]
    c' [ d' e gis d' ]
    c [ e fis aes, ]
    c
    r8
    \bar ""
    \break

%partitura2
\clef treble
    c16 [ aes, fis e ]
    c [ d' gis e bes' ]
    c' [ aes bes' e' ]
    c' [ d''' gis' e' bes''' ]
    c'' [ bes''' e' gis' d''' ]
    c' [ e' bes' aes ]
    c' [ bes' e gis d' ]
    c [ e fis aes, ]
    c
    r8
    \bar ""
    \break

%partitura3
\clef treble
    c16 [ ees ees, aes ]
    c [ d' e' g' bes' ]
    c'' [ ees'' bes' aes'' b'' d''' e''' e' bes''' ]
    c'''' [ bes''' e' e''' d''' b'' aes'' bes' ees'' ]
    c'' [ bes' g' e' d' ]
    c [ aes ees, ees ]
    c
    r8
    \bar ""
    \break

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

%partitura5
\clef treble
    c16 [ d fis e a d' gis bes d' ]
    c' [ d' fis' e' a' ais' gis' bes' d'' ]
    c'' [ d'' bes' gis' ais' a' e' fis' d' ]
    c' [ d' bes gis d' a e fis d ]
    c
    r8
    \bar ""
    \break

%partitura6
\clef treble
    c16 [ d fis e a d' gis f' d' ]
    c'' [ aes fis'' e' bes'' d''' e''' f''' d'' ]
    c'' [ d'' f''' gis' d''' bes'' e' fis'' aes ]
    c'' [ d' f' e' d' a e fis d ]
    c
    r8
    \bar ""
    \break

%partitura7
\clef treble
    c16 [ d fis aes b d' e' f' bes' ]
    c'' [ aes fis'' aes'' b'' d''' e''' f''' bes''' ]
    c'''' [ bes''' f''' e''' d''' b'' aes'' fis'' aes ]
    c'' [ bes' f' e' d' b aes fis d ]
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

%partitura9
\clef treble
    c16 [ ees gis aes ]
    c [ d' e' g' gis' ]
    c'' [ ees'' d'' aes'' b'' d''' e''' g''' d''' ]
    c'''' [ d''' g''' e''' d''' b'' aes'' d'' ees'' ]
    c'' [ gis' g' e' d' ]
    c [ aes gis ees ]
    c
    r8
    \bar ""
    \break

%partitura10
\clef treble
    c16 [ d b e a dis' gis f' g' ]
    c' [ cis'' b' e' a'' dis''' gis' f''' g'' ]
    c'' [ g'' f''' gis' dis''' a'' e' b' cis'' ]
    c' [ g' f' gis dis' a e g d ]
    c
    r8
    \bar ""
    \break

%partitura11
\clef treble
    c16 [ cis g gis a dis' e' f' b' ]
    c'' [ cis'' g'' gis'' a'' dis''' e''' f''' b''' ]
    c'''' [ b''' f''' e''' dis''' a'' gis'' g'' cis'' ]
    c'' [ b' f' e' dis' a gis g cis ]
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

%partitura13
\clef treble
    c16 [ cis e fis f' d' e' f' b' ]
    c'' [ ees'' e'' ]
    c'' [ b'' d''' e''' f''' d''' ]
    c'''' [ d''' f''' e''' d''' b'' ]
    c'' [ e'' ees'' ]
    c'' [ b' f' e' d' f' fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura14
\clef treble
    c16 [ b gis fis f' d' ]
    c' [ b' gis' fis' f'' d'' ]
    c'' [ b'' gis'' fis'' f''' d''' ]
    c''' [ d''' f''' fis'' gis'' b'' ]
    c'' [ d'' f'' fis' gis' b' ]
    c' [ d' f' fis gis b ]
    c
    r8
    \bar ""
    \break

%partitura15
\clef treble
    c16 [ f g a gis dis' ]
    c' [ f' g' a' gis' des'' ]
    c'' [ f'' e'' a'' gis'' des''' ]
    c''' [ des''' gis'' a'' e'' f'' ]
    c'' [ des'' gis' a' g' f' ]
    c' [ dis' gis a g f ]
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

%partitura17
\clef treble
    c16 [ cis e fis gis dis' ]
    c' [ f' b' fis' gis' b' ]
    c'' [ a'' e'' fis'' gis'' b'' ]
    c''' [ b'' gis'' fis'' e'' a'' ]
    c'' [ b' gis' fis' b' f' ]
    c' [ dis' gis fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura18
\clef treble
    c16 [ cis e fis f' d' ]
    c' [ cis' b' fis' gis' e'' ]
    c'' [ cis'' ais'' fis'' f''' b'' ]
    c''' [ b'' f''' fis'' ais'' cis'' ]
    c'' [ e'' f'' fis' b' cis' ]
    c' [ d' f' fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura19
\clef treble
    c16 [ cis gis fis f' d' ]
    c' [ b' gis' fis' f'' d'' ]
    c'' [ cis'' gis'' fis'' f''' d''' ]
    c''' [ d''' f''' fis'' gis'' cis'' ]
    c'' [ d'' f'' fis' gis' b' ]
    c' [ d' f' fis gis cis ]
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
    r8
    \bar ""
    \break

%partitura21
\clef treble
    c16 [ f e fis gis des' ]
    c' [ f' e' fis' gis' des'' ]
    c'' [ f'' e'' fis'' gis'' des''' ]
    c''' [ des''' gis'' fis'' e'' f'' ]
    c'' [ des'' gis' fis' e' f' ]
    c' [ des' gis fis e f ]
    c
    r8
    \bar ""
    \break

%partitura22
\clef treble
    c16 [ cis e fis gis b ]
    c' [ cis' e' fis' gis' b' ]
    c'' [ cis'' e'' fis'' gis'' b'' ]
    c''' [ b'' gis'' fis'' e'' cis'' ]
    c'' [ b' gis' fis' e' cis' ]
    c' [ b gis fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura23
\clef treble
    c16 [ cis e fis a b ]
    c' [ cis' e' fis' gis' b' ]
    c'' [ cis'' dis'' fis'' a'' b'' ]
    c''' [ b'' a'' fis'' dis'' cis'' ]
    c'' [ b' a' fis' dis' cis' ]
    c' [ b a fis e cis ]
    c
    r8
    \bar ""
    \break

%partitura24
\clef treble
    c16 [ cis dis fis a b ]
    c' [ cis' d' fis' a' b' ]
    c'' [ cis'' dis'' fis'' a'' b'' ]
    c''' [ b'' a'' fis'' dis'' cis'' ]
    c'' [ b' a' fis' d' cis' ]
    c' [ b a fis d cis ]
    c
}
  >>
  \layout {
    indent = 0\mm
    line-width = 190\mm
  }
  \midi{ }
  
}

