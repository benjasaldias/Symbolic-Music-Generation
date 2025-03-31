% z vector: tensor([[-0.3915,  0.1768,  1.1580, -0.1258, -1.9255, -2.8433, -0.5840,  0.5979, 1.3584, -0.4064,  1.6265, -1.4897]])
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
        c16 [ cis bes fis f d' bes a fis' d' cis' bes' fis' f' d'' bes' a' fis'' d'' fis'' a' bes' d'' f' fis' bes' cis' d' fis' a bes d' f fis bes cis ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    