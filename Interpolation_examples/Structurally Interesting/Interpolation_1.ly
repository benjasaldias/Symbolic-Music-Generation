
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

%scale 0{
    \clef treble
    c16 [ ees e, aes b, gis, e' ees ]
    c c'' [ aes e aes'' b gis e''' ees' ]
    c' c'''' c' [ ees' e''' gis b aes'' e aes ]
    c'' c [ ees e' gis, b, aes e, ees ]
    c
    r8
    \bar ""
    \break
    
%scale 1{
    \clef treble
    c16 [ g, e, aes b, gis, e' ees ]
    c c'' [ aes e aes'' b gis e''' ees' ]
    c' c'''' c' [ ees' e''' gis b aes'' e aes ]
    c'' c [ ees e' gis, b, aes e, ees ]
    c
    r8
    \bar ""
    \break
    
%scale 2{
    \clef treble
    c16 [ g, g e b, gis, gis ees ]
    c c' [ aes e e' b gis gis' ees' ]
    c' c'' c' [ ees' gis' gis b e' e aes ]
    c' c [ ees gis gis, b, e g aes, ]
    c
    r8
    \bar ""
    \break
    
%scale 3{
    \clef treble
    c16 [ g, g e b, gis, gis ees b' ]
    c' [ g e e' b gis gis' ees' ]
    c' c'' c' [ ees' gis' gis b e' e g ]
    c' [ b' ees gis gis, b, e g g, ]
    c
    r8
    \bar ""
    \break
    
%scale 4{
    \clef treble
    c16 [ g, g e b, gis, gis ees b' ]
    c' [ g e e' b gis gis' ees' b''' ]
    c'' [ b''' ees' gis' gis b e' e g ]
    c' [ b' ees gis gis, b, e g g, ]
    c
    r8
    \bar ""
    \break
    
%scale 5{
    \clef treble
    c16 [ g, g e b, f gis ees b' ]
    c' [ g a' e' b gis gis' ees' b''' ]
    c'' [ b''' ees' gis' gis b e' a' g ]
    c' [ b' ees gis f b, e g g, ]
    c
    r8
    \bar ""
    \break
    
%scale 6{
    \clef treble
    c16 [ g, g e b, f gis ees f' ]
    c' [ g a' e' b cis'' gis' ees' f'' ]
    c'' [ f'' ees' gis' cis'' b e' a' g ]
    c' [ f' ees gis f b, e g g, ]
    c
    r8
    \bar ""
    \break
    
%scale 7{
    \clef treble
    c16 [ g, a e b, f gis ees f' ]
    c' [ g a' e' b cis'' gis' ees' f'' ]
    c'' [ f'' ees' gis' cis'' b e' a' g ]
    c' [ f' ees gis f b, e a g, ]
    c
    r8
    \bar ""
    \break
    
%scale 8{
    \clef treble
    c16 [ g, a e b, f gis ees f' ]
    c' [ d' a' e' b cis'' gis' ees' f'' ]
    c'' [ f'' ees' gis' cis'' b e' a' d' ]
    c' [ f' ees gis f b, e a g, ]
    c
    r8
    \bar ""
    \break
    
%scale 9{
    \clef treble
    c16 [ bes, a e fis f gis ais f' ]
    c' [ bes a' e' d' cis'' gis' ees'' f'' ]
    c'' [ f'' ees'' gis' cis'' d' e' a' d' ]
    c' [ f' ais gis f fis e a bes, ]
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
