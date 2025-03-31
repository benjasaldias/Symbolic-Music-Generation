% z vector: tensor([[ 1.9146,  0.5822, -0.1439,  1.4604,  0.1132,  3.1338, -3.2541,  1.0016,-0.3296, -0.4741, -3.1058,  1.4257]])
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
        c16 [ f g d a b c' cis' ees' fis' f' cis'' c'' a' b' fis'' cis'' cis''' c''' cis''' cis'' fis'' b' a' c'' cis'' f' fis' ees' cis' c' b a d g f ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    