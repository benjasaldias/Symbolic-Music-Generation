% z vector: tensor([[ 0.1929,  2.0179,  3.1730,  0.9755, -0.1987,  0.5995,  1.1065, -0.8697, 2.7057, -1.4763,  3.4053,  1.2802]])
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
        bes,16 [ d fis e bes c' d' fis' g' bes' d'' c'' fis'' bes'' fis'' d''' fis''' c''' bes''' c''' fis''' d''' fis'' bes'' fis'' c'' d'' bes' g' fis' d' c' bes e fis d ]
    bes,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    