% z vector: tensor([[ 0.1114, -0.9886,  0.9215,  1.1563,  2.0530, -1.8659,  2.9213, -1.4278, 2.1158,  2.8403, -0.5812,  0.6407]])
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble
    c16 [ f b e a ees' gis des' g' ]
    c' [ f' b' e' a' ees'' gis' des'' g'' ]
    c'' [ g'' des'' gis' ees'' a' e' b' f' ]
    c' [ g' des' gis ees' a e b f ]
    c
}
>>
