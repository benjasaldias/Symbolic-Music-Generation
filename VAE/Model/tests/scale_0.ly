% z vector: tensor([[ 1.3488,  0.2265,  1.8917, -0.2612,  0.4995,  0.8811, -0.4428, -0.2790,-2.6727, -3.1456, -2.8264,  2.2601]])
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
        bes,16 [ aes, cis d d aes, fis aes d bes aes e d' ees' aes fis' e' d' bes' d' g' fis' aes ees' d' e aes bes d aes fis aes, d d cis aes, ]
    bes,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    