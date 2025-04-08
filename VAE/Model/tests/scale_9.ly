% z vector: tensor([[ 0.9830, -0.4190, -0.6883, -0.6695,  1.4852, -1.8413, -1.0625, -2.1356, 1.0085,  2.6106,  0.8448, -0.2195]])
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
        b,16 [ bes, d ees d bes g g e' b bes c'' ees' g' fis'' g' fis' c''' b' c''' fis' g' fis'' g' ees' c'' bes b d' g g bes d ees d bes, ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    