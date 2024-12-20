\version "2.24.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0
\clef treble
    c16 [ e b fis ais d' ]
    c' [ e' g' fis' ais' d'' ]
    c'' [ e'' b'' fis'' ais'' d''' ]
    c''' [ d''' ais'' fis'' b'' e'' ]
    c'' [ d'' ais' fis' g' e' ]
    c' [ d' ais fis b e ]

%scale 1
\clef treble
    c16 [ e b fis a d' ]
    c' [ e' b' fis' ais' d'' ]
    c'' [ e'' b'' fis'' f''' d''' ]
    c''' [ d''' f''' fis'' b'' e'' ]
    c'' [ d'' ais' fis' b' e' ]
    c' [ d' a fis b e ]

%scale 2
\clef treble
    c16 [ e b fis a d' ]
    c' [ e' b' fis' gis' d'' ]
    c'' [ e'' b'' fis'' a'' d''' ]
    c''' [ d''' a'' fis'' b'' e'' ]
    c'' [ d'' a' fis' b' e' ]
    c' [ d' a fis b e ]

%scale 3
\clef treble
    c16 [ e b fis a b ]
    c' [ b' b' fis' gis' b' ]
    c'' [ e'' b'' fis'' a'' d''' ]
    c''' [ d''' a'' fis'' b'' e'' ]
    c'' [ b' a' fis' b' e' ]
    c' [ b a fis b e ]

%scale 4
\clef treble
    c16 [ ees b fis a b ]
    c' [ cis' b' fis' gis' b' ]
    c'' [ cis'' b'' fis'' a'' d''' ]
    c''' [ d''' a'' fis'' b'' cis'' ]
    c'' [ b' a' fis' b' cis' ]
    c' [ b a fis b cis ]

%scale 5
\clef treble
    c16 [ cis b fis a b ]
    c' [ cis' b' fis' gis' b' ]
    c'' [ cis'' b'' fis'' a'' b'' ]
    c''' [ b'' a'' fis'' b'' cis'' ]
    c'' [ b' a' fis' b' cis' ]
    c' [ b gis fis b cis ]

%scale 6
\clef treble
    c16 [ cis e fis gis b ]
    c' [ cis' e' fis' gis' b' ]
    c'' [ cis'' e'' fis'' gis'' b'' ]
    c''' [ b'' a'' fis'' e'' cis'' ]
    c'' [ b' a' fis' b' cis' ]
    c' [ b gis fis e cis ]

%scale 7
\clef treble
    c16 [ cis e fis gis b ]
    c' [ cis' e' fis' gis' b' ]
    c'' [ cis'' e'' fis'' gis'' b'' ]
    c''' [ b'' gis'' fis'' e'' cis'' ]
    c'' [ b' a' fis' d' cis' ]
    c' [ b gis fis e cis ]

%scale 8
\clef treble
    c16 [ cis e fis gis b ]
    c' [ cis' e' fis' gis' b' ]
    c'' [ cis'' e'' fis'' ees'' b'' ]
    c''' [ b'' ees'' fis'' e'' cis'' ]
    c'' [ b' a' fis' e' cis' ]
    c' [ b gis fis e cis ]
    c
}
>>
\midi{}
}
