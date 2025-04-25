% z vector: tensor([[ 0.9155, -0.0204, -1.8960, -0.6674, -0.5779,  0.5821,  2.5262, -0.4835,-0.2756,  0.6987]])
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
        c16 [ aes, ees e ]
    c [ b aes e ees' c' aes ees' e' c' a' aes' e' ees'' c'' ees'' e' aes' a' c' e' ees' aes c' ees' e aes b ]
    c [ e ees aes, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    