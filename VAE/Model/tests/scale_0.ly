% z vector: tensor([[-0.2408,  1.1583, -0.3410, -2.4878, -0.6667,  1.9976,  0.8512,  0.9556,-0.5074, -1.9883]])
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
        c16 [ d g fis aes b c' d' g' fis' aes' cis'' c'' d'' g'' fis'' aes'' b'' c''' b'' aes'' fis'' g'' d'' c'' cis'' aes' fis' aes' d' c' b aes fis g d ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    