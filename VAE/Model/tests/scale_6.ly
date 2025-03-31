% z vector: tensor([[ 0.4309, -2.2570, -3.1722,  0.6176, -1.1434, -2.0567, -2.0880,  1.7207,-0.3786,  1.2810, -1.9432,  0.0580]])
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
        c16 [ aes a e a b aes cis' f' c' aes' b' e' a' cis'' aes' cis'' f'' c'' f'' cis'' aes' cis'' a' e' b' f' c' f' cis' aes b a e a aes ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    