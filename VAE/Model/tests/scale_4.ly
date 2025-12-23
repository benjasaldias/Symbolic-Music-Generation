% z vector: tensor([[ 6.5173e-02,  2.0804e+00,  1.2396e-01, -1.0062e+00, -1.6398e+00, 2.7282e-01, -2.3033e-01, -1.7897e-01, -1.0611e-04, -3.3391e+00]])
    \version "2.22.2"
    \header {
    title = "Sample"
    composer = "Symbolic Music Generation"
    }

    \score {
    <<
        \cadenzaOn
        \override Beam.breakable = ##t
        \accidentalStyle Score.forget
        \override Score.TextScript.padding = #2
        \override Stem.transparent = ##t
    {
    \clef treble
        c16 [ aes, g e d b bes d' g' e' d' cis'' bes' aes' f'' e'' d'' ees'' bes'' b'' d'' e'' b' aes' e' cis'' d' e' g' bes bes b fis e g d ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    