% z vector: tensor([[-0.6748, -0.1736, -1.2314,  2.2294,  0.4988, -1.2900,  0.6814,  1.2909,-1.3895,  0.4592, -1.2876, -0.7285]])
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
        ees16 [ d bes e fis d' aes cis' fis' c' d' bes' e' fis' d'' aes' bes' fis'' c'' fis'' bes' aes' d'' fis' e' bes' d' ees' fis' bes aes d' fis e bes d ]
    ees
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    