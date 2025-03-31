% z vector: tensor([[-1.3658,  0.7979,  0.6430,  2.3186, -1.0592, -0.9401,  0.6355,  1.2409, 1.9930,  0.7302,  1.0102,  0.3092]])
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
        c16 [ e a fis bes ees' c' e' d' fis' bes' ees'' c'' e'' a'' fis'' bes'' ees''' c''' ees''' bes'' fis'' a'' e'' c'' ees'' bes' fis' d' e' c' ees' bes fis a e ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    