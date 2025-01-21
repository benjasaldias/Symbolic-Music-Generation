
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
    c16 [ f g fis b b ]
    c' [ fis' g' fis' gis' des'' ]
    c'' [ f'' b'' fis'' gis'' des''' ]
    c''' [ des''' gis'' fis'' b'' f'' ]
    c'' [ des'' gis' fis' g' fis' ]
    c' [ b b fis g f ]
    c
    r8
    \bar ""
    \break

%partitura1

\clef treble
    c16 [ f g fis gis b ]
    c' [ fis' g' fis' gis' des'' ]
    c'' [ bes'' b'' fis'' gis'' ees'' ]
    c''' [ ees'' gis'' fis'' b'' bes'' ]
    c'' [ des'' gis' fis' g' fis' ]
    c' [ b gis fis g f ]
    c
    r8
    \bar ""
    \break

%partitura2

\clef treble
    c16 [ f g fis ]
    c [ b ]
    c' [ fis' ees' fis' gis' g' ]
    c'' [ bes'' b' fis'' e' ees'' ]
    c''' [ ees'' gis'' fis'' b' bes'' ]
    c'' [ g' gis' fis' ees' fis' ]
    c' [ b ]
    c [ fis g f ]
    c
    r8
    \bar ""
    \break

%partitura3

\clef treble
    c16 [ aes, g fis ]
    c [ b ]
    c' [ e ees' fis' gis' g' ]
    c'' c' [ b' fis'' e' ees'' ]
    c''' [ ees'' e' fis'' b' ]
    c' c'' [ g' gis' fis' ees' e ]
    c' [ b ]
    c [ fis g aes, ]
    c
    r8
    \bar ""
    \break

%partitura4

\clef treble
    c16 [ aes, g fis ]
    c [ b ]
    c' [ e ees' fis' aes g' ]
    c'' c' [ b' gis' e' ees'' ]
    c''' [ ees'' e' fis'' b' ]
    c' c'' [ g' aes ]
    c' [ ees' e ]
    c' [ b ]
    c [ e g aes, ]
    c
    r8
    \bar ""
    \break

%partitura5

\clef treble
    c16 [ aes, g e ]
    c [ b ]
    c' [ e cis' ]
    c' [ aes g' ]
    c'' c' [ b' gis' e' ees'' ]
    c''' [ ees'' e' gis' b' ]
    c' c'' [ g' aes ]
    c' [ cis' e ]
    c' [ b ]
    c [ e g aes, ]
    c
    r8
    \bar ""
    \break

%partitura6

\clef treble
    c16 [ aes, g e ]
    c [ b ]
    c' [ e cis' ]
    c' [ aes g' ]
    c'' c' [ a' gis' e' ees'' ]
    c''' [ ees'' e' gis' a' ]
    c' c'' [ g' aes ]
    c' [ cis' e ]
    c' [ b ]
    c [ e g aes, ]
    c
    r8
    \bar ""
    \break

%partitura7

\clef treble
    c16 [ aes, f e ]
    c [ fis gis e cis' ]
    c' [ aes g' e' ]
    c' [ a' gis' e' ees'' ]
    c'' [ ees'' e' gis' a' ]
    c' [ e' f' aes ]
    c' [ cis' e gis fis ]
    c [ e f aes, ]
    c
    r8
    \bar ""
    \break

%partitura8

\clef treble
    c16 [ g, f e ]
    c [ a gis e cis' ]
    c' [ aes f' e' ]
    c' [ a' gis' e' dis'' ]
    c'' [ dis'' e' gis' a' ]
    c' [ e' f' aes ]
    c' [ cis' e gis a ]
    c [ e f aes, ]
    c
    r8
    \bar ""
    \break

%partitura9

\clef treble
    c16 [ g, cis e ]
    c [ a gis e cis' ]
    c' [ aes f' e' ]
    c' [ a' gis' e' dis'' ]
    c'' [ dis'' e' gis' a' ]
    c' [ e' f' aes ]
    c' [ cis' e gis a ]
    c [ e cis g, ]
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
