% z vector: tensor([[ 0.3529,  0.7040, -1.1082, -0.7228,  0.3514, -1.0610, -0.7454, -1.0061,-0.5468,  1.8497]])
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
        c16 [ g, a, fis cis a c' g ees' f' cis' a c'' g' cis' fis'' d'' a'' c''' a'' d'' fis'' cis' g' c'' a cis' f' ees' g c' a cis fis a, g, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    