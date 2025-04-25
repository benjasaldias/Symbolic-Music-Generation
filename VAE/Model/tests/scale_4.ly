% z vector: tensor([[-1.1149, -2.2538, -0.5052,  1.8875,  0.3007,  0.6941, -0.8361,  0.5833, 0.4393,  1.4001]])
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
        c16 [ cis f e f a g a cis' b cis' f' ees' f' a' g' a' cis'' b' cis'' a' g' a' f' ees' f' cis' b cis' a g a f e f cis ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    