% z vector: tensor([[-1.0843, -1.7596,  0.9660,  0.6016,  0.3516, -0.3134,  0.5134,  1.0220, 0.7549, -1.5627]])
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
        c16 [ ees a g a d' b ees' f' fis' a' a' cis'' ees'' f'' fis'' a'' d''' cis''' d''' a'' fis'' f'' ees'' cis'' a' a' fis' f' ees' b d' a g f ees ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    