% z vector: tensor([[ 0.9786,  0.2608, -1.0609,  0.1171,  3.2846,  0.6414,  0.1723,  1.4347, 0.5930,  3.0351]])
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
        c16 [ bes, bes e d cis c' fis e' c' bes a e' d' cis' aes' fis' f' c'' f' fis' aes' cis' d' e' f' bes c' e' fis c' bes d e a, bes, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    