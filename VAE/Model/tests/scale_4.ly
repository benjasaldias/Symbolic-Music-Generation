% z vector: tensor([[ 1.5739, -2.7979,  0.2204, -0.6503, -0.6179,  3.0090, -0.0037,  2.1211, 0.1600,  1.5303, -1.4607,  0.5285]])
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
        b,16 [ a, g cis aes e b a fis' cis' aes' c'' b' a' fis'' cis'' aes'' c''' b'' c''' aes'' cis'' fis'' a' b' c'' aes' cis' e' a b e aes cis g a, ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    