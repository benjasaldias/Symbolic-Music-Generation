% z vector: tensor([[-0.9049,  2.8897, -2.5339, -2.8136,  0.4982,  0.7864,  1.7759,  2.5540,-0.7197,  0.2412]])
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
        c16 [ b, f b cis ees' bes g' b c' ees' f' bes' g' b' a' cis'' cis'' bes'' cis'' cis'' a' b' g'' bes' f' ees' c' b g' bes ees' cis b f b, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    