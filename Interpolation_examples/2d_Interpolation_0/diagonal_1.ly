\version "2.22.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

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

%partitura6

\clef treble
    c16 [ d fis e a d' gis f' d' ]
    c'' [ aes fis'' e' bes'' d''' e''' f''' d'' ]
    c'' [ d'' f''' gis' d''' bes'' e' fis'' aes ]
    c'' [ d' f' e' d' a e fis d ]

%partitura12

\clef treble
    c16 [ cis e gis b dis' e' f' b' ]
    c'' [ cis'' g'' gis'' a'' dis''' e''' f''' b''' ]
    c'''' [ b''' f''' e''' dis''' a'' gis'' g'' cis'' ]
    c'' [ b' f' e' dis' b gis g cis ]

%partitura18

\clef treble
    c16 [ cis e fis f' d' ]
    c' [ cis' b' fis' gis' e'' ]
    c'' [ cis'' ais'' fis'' f''' b'' ]
    c''' [ b'' f''' fis'' ais'' cis'' ]
    c'' [ e'' f'' fis' b' cis' ]
    c' [ d' f' fis e cis ]

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
\midi{}
}
