% z vector: tensor([[ 0.7934, -0.0861, -0.0349,  0.8358,  1.9307, -0.7264,  1.2350, -0.3561,-2.7564,  1.9470, -0.7015, -0.5407]])
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
        c16 [ bes, bes e d d' aes fis ees c' bes fis' e' d' bes aes' fis' ees' fis'' ees' fis' aes' bes d' e' fis bes c' ees fis aes d' d e bes bes, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    