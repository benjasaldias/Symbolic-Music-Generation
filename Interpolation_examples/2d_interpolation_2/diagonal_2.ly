\version "2.24.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0_4

\clef treble
    c16 [ d f e g d' gis f e' ]
    c' [ d' bes' e' fis' e'' gis' gis'' fis'' ]
    c'' [ fis'' gis'' gis' e'' fis' e' bes' d' ]
    c' [ e' f gis d' g e f d ]

%scale 1_3

\clef treble
    c16 [ d f aes a d' gis d' e' ]
    c'' [ d' bes' aes'' fis' cis''' gis' gis'' fis'' ]
    c'' [ fis'' a'' gis' cis''' fis' aes'' bes' ees'' ]
    c'' [ e' d' gis d' a aes f d ]

%scale 2_2

\clef treble
    c16 [ d f e b cis' gis d' a' ]
    c' [ g' bes' e' fis' cis''' gis' bes' a''' ]
    c'' [ a''' bes' gis' cis''' fis' e' bes' g' ]
    c' [ a' d' gis cis' b e f d ]

%scale 3_1

\clef treble
    c16 [ g a e b cis' gis bes f' ]
    c' [ g' a' e' b' cis'' gis' ees'' f'' ]
    c'' [ f'' ees'' gis' cis'' b' e' a' g' ]
    c' [ f' bes gis cis' b e a g ]

%scale 4_0

\clef treble
    c16 [ g a e b ]
    c' [ gis bes f' ]
    c' [ g' a' e' b' ]
    c'' [ gis' ees'' f'' ]
    c'' [ f'' ees'' gis' ]
    c'' [ b' e' a' g' ]
    c' [ f' bes gis ]
    c' [ b e a g ]

}
>>
\midi{}
}
