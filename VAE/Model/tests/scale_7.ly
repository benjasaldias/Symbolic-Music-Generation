% z vector: tensor([[ 2.5191, -0.2611, -3.0022, -0.7890, -0.3194, -1.0356, -1.6097, -0.0651,-0.3762,  0.3964, -0.4335, -0.3495]])
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
        ees16 [ bes, d ]
    ees [ cis' fis g' a' d' ees' f'' c'' a' bes' d'' ees'' e'' f'' a'' f'' e'' ees'' aes'' bes' a' c'' f'' ees'' d' a' g' fis cis' ]
    ees [ d bes, ]
    ees
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    