% z vector: tensor([[ 2.2553, -1.0787,  0.0815,  2.4777,  0.3796, -0.3458, -0.0759, -1.8589,-3.2558, -0.7731]])
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
        c16 [ ees bes fis ees d' aes ees' fis' d' a' bes' e' b' d'' bes' ees'' fis'' c'' fis'' ees'' bes' d'' b' e' bes' a' d' fis' ees' aes d' ees fis bes ees ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    