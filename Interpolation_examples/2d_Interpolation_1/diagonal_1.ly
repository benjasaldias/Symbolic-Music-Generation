\version "2.24.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0_0

\clef treble
    c16 [ b a fis f' des' ]
    c' [ b' a' fis' f'' f'' ]
    c'' [ b'' a'' fis'' f''' des''' ]
    c''' [ des''' f''' fis'' a'' b'' ]
    c'' [ f'' f'' fis' a' b' ]
    c' [ des' f' fis a b ]

%scale 1_1

\clef treble
    c16 [ e g fis ais des' ]
    c' [ e' g' fis' ais' des'' ]
    c'' [ e'' g'' fis'' ais'' des''' ]
    c''' [ des''' ais'' fis'' g'' e'' ]
    c'' [ des'' ais' fis' g' e' ]
    c' [ des' ais fis g e ]

%scale 2_2

\clef treble
    c16 [ e g fis ais des' ]
    c' [ e' g' fis' ais' ees ]
    c'' [ e'' g'' fis'' ais'' cis''' ]
    c''' [ cis''' ais'' fis'' g'' e'' ]
    c'' [ ees ais' fis' g' e' ]
    c' [ des' ais fis g e ]

%scale 3_3

\clef treble
    c16 [ aes a e bes cis' gis e' a' ]
    c' [ d'' f'' e' e'' g'' gis' fis''' a''' ]
    c'' [ a''' fis''' gis' g'' e'' e' f'' d'' ]
    c' [ a' e' gis cis' bes e a aes ]


%scale 4_4

\clef treble
    c16 [ f bes e b d' gis f' ges' ]
    c' [ g' aes' e' b' d'' gis' ees'' ges'' ]
    c'' [ ges'' ees'' gis' d'' b' e' aes' g' ]
    c' [ ges' f' gis d' b e bes f ]
    c
}
>>
\midi{}
}
