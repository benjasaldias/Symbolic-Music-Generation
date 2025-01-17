% z vector: tensor([[ 1.3008,  0.4521,  0.4800, -0.3028,  0.5503,  1.2966, -0.5616,  1.4207, 0.6411,  0.8599,  1.8663,  0.2778, -2.3001, -0.6655, -2.0614, -1.6963]])
    \new PianoStaff <<
    \cadenzaOn
    \new Staff = "right" {
    \clef treble
        c16 [ ees ees, e g g, gis b b, ]
    c' [ ees' ees e' g' g gis' b' b ]
    c'' [ b b' gis' g g' e' ees ees' ]
    c' [ b, b gis g, g e ees, ees ]
    c
    }
    >>
    