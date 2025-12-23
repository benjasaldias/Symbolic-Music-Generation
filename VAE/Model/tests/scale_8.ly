% z vector: tensor([[ 0.2559,  0.7029,  0.0063,  0.0074, -1.5714, -2.4709,  0.9748, -1.9328,-0.8919,  0.4250]])
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
        c16 [ b, a e ees f aes g a c' d' f' e' ees' bes' aes' g' f'' c'' f'' g' aes' a' ees' e' f' b c' a g aes f ees e a, aes, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    