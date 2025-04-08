% z vector: tensor([[ 0.8973,  2.3248,  3.0624, -0.0405,  0.8500, -1.0569, -1.2361,  0.8098, 1.2865, -1.4150,  0.2717, -1.9363]])
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
        d16 [ e fis aes bes c' d' e' g' aes' bes' c'' d'' e'' g'' aes'' bes'' c''' d''' c''' bes'' aes'' g'' e'' d'' c'' bes' aes' g' e' d' c' bes aes fis e ]
    d
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    