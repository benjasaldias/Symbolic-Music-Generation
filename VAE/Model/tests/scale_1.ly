% z vector: tensor([[-0.0994, -2.1222,  0.9009, -1.5451, -0.0785, -0.1835,  1.4788,  0.0441,-1.8170,  2.6873]])
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
        c16 [ g, g fis aes cis' c' a g' fis' aes' cis'' c'' aes' g'' fis'' d'' cis''' c''' cis''' d'' fis'' g'' aes' c'' cis'' aes' fis' g' a c' cis' aes fis g g, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    