% z vector: tensor([[-1.8497,  0.0721, -0.1523, -1.7329,  2.0378,  0.8610,  2.7683, -1.5532,-0.4999, -0.5790]])
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
        c16 [ cis g e b, ees' aes a ees' c' cis' g' e' f' b' aes' a' ees'' c'' ees'' a' aes' b' f' e' g' cis' c' ees' a aes ees' b, e g cis ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    