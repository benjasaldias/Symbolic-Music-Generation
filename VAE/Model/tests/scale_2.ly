% z vector: tensor([[-0.6164,  1.9598, -0.6129, -0.3655, -1.9062,  1.1923, -2.1731, -0.5314, 0.8091,  1.4664]])
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
        c16 [ aes aes fis d' ees' c' e' aes' fis' bes' e'' c'' e'' aes'' fis'' bes'' c''' c''' c''' bes'' fis'' aes'' e'' c'' d'' bes' fis' aes' e' c' ees' d' fis aes aes ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    