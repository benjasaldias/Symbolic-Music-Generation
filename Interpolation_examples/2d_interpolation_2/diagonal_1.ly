\version "2.24.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0_0

\clef treble
    c16 [ cis e fis a bes ]
    c' [ cis' e' fis' a' bes' ]
    c'' [ f' e'' fis'' a'' d'' ]
    c''' [ d'' a'' fis'' e'' f' ]
    c'' [ bes' a' fis' e' cis' ]
    c' [ bes a fis e cis ]

%scale 1_1

\clef treble
    c16 [ d f e fis bes gis bes e' ]
    c' [ d' bes' e' fis' ]
    c'' [ gis' bes' bes'' ]
    c'' [ bes'' bes' gis' e'' fis' e' bes' d' ]
    c' [ e' bes gis bes fis e f d ]

%scale 2_2

\clef treble
    c16 [ d f e b cis' gis d' a' ]
    c' [ g' bes' e' fis' cis''' gis' bes' a''' ]
    c'' [ a''' bes' gis' cis''' fis' e' bes' g' ]
    c' [ a' d' gis cis' b e f d ]

%scale 3_3

\clef treble
    c16 [ e f aes ]
    c' [ cis' e' e' a' ]
    c'' [ g' f'' aes'' d'' bes'' e''' e'' a''' ]
    c'''' [ a''' e'' e''' bes'' d'' aes'' f'' g' ]
    c'' [ a' e' e' cis' ]
    c' [ aes f e ]

%scale 4_4

\clef treble
    c16 [ e bes aes ]
    c' [ e' ]
    c' [ e' bes' ]
    c'' [ ais' f'' aes'' e'' bes'' fis'' ais'' e''' ]
    c''' [ e''' ais'' fis'' bes'' e'' aes'' f'' ais' ]
    c'' [ bes' e' e' e' ]
    c' [ aes bes e ]
    c
}
>>
\midi{}
}
