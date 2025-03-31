% z vector: tensor([[-1.7141, -1.8351, -1.0032, -1.1318,  0.3801,  0.0988, -0.0236,  0.2085,-0.0411, -0.1641,  0.5219,  1.1986]])
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
        b,16 [ a, fis, ees cis ]
    b, [ g f ees b a g ees' cis' b g' f' ees' b' ees' f' g' b cis' ees' g a b ees f g ]
    b, [ cis ees ees a, ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    