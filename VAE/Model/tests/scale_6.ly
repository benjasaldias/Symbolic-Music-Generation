% z vector: tensor([[ 1.4386, -0.9184,  1.0151, -1.4283, -0.6263,  1.8442,  1.5889, -0.0356, 1.7561, -2.5454, -0.7457,  0.5842]])
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
        bes,16 [ f, ees e fis g bes f ees' d' fis' a' bes' c'' g' bes' fis'' g'' bes'' g'' fis'' bes' g' c'' bes' a' fis' d' ees' f bes g fis e ees f, ]
    bes,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    