\version "2.22.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0
    \clef treble
    c16 [ bes, f e d f gis fis a' ]
    c' [ d' f' e' d' a' gis' fis' f'' ]
    c'' [ f'' fis' gis' a' d' e' f' d' ]
    c' [ a' fis gis f d e f a, ]

%scale 1
    \clef treble
    c16 [ bes, f e d f gis fis a' ]
    c' [ bes f' e' d' a' gis' fis' f'' ]
    c'' [ f'' fis' gis' a' d' e' f' bes ]
    c' [ a' fis gis f d e f bes, ]

%scale 2
    \clef treble
    c16 [ bes, f e d des' gis fis a' ]
    c' [ bes f' e' d' a' gis' fis' f'' ]
    c'' [ f'' fis' gis' a' d' e' f' bes ]
    c' [ a' fis gis des' d e f bes, ]

%scale 3
    \clef treble
    c16 [ bes, f e d des' gis fis a' ]
    c' [ bes f' e' d' a' gis' fis' f'' ]
    c'' [ f'' fis' gis' a' d' e' f' bes ]
    c' [ a' fis gis des' d e f bes, ]

%scale 4
    \clef treble
    c16 [ bes, f e d des' gis fis a' ]
    c' [ bes f' e' d' des'' gis' fis' f'' ]
    c'' [ f'' fis' gis' des'' d' e' f' bes ]
    c' [ a' fis gis des' d e f bes, ]

%scale 5
    \clef treble
    c16 [ bes, f e d des' gis fis a' ]
    c' [ bes f' e' d' des'' gis' fis' f'' ]
    c'' [ f'' fis' gis' des'' d' e' f' bes ]
    c' [ a' fis gis des' d e f bes, ]

%scale 6
    \clef treble
    c16 [ bes, f e d des' gis fis a' ]
    c' [ bes f' e' d' des'' gis' fis' f'' ]
    c'' [ f'' fis' gis' des'' d' e' f' bes ]
    c' [ a' fis gis des' d e f bes, ]

%scale 7
    \clef treble
    c16 [ bes, f e bes des' gis fis f' ]
    c' [ bes a' e' d' des'' gis' fis' f'' ]
    c'' [ f'' fis' gis' des'' d' e' a' gis' ]
    c' [ f' fis gis des' bes e f bes, ]

%scale 8
    \clef treble
    c16 [ bes, f e bes des' gis fis e' ]
    c' [ gis' aes' e' g' ]
    c'' [ gis' fis' f'' ]
    c'' [ f'' d'' gis' ]
    c'' [ g' e' aes' gis' ]
    c' [ g' fis gis des' bes e f bes, ]

%scale 9
    \clef treble
    c16 [ ees ees e bes cis' gis b g' ]
    c' [ gis' aes' e' g' ]
    c'' [ gis' b' f'' ]
    c'' [ f'' b' gis' ]
    c'' [ g' e' aes' gis' ]
    c' [ g' b gis cis' bes e ees ees ]
    c
}
>>
\midi{}
}
