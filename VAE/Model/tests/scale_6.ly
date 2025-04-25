% z vector: tensor([[ 0.5494,  0.0078, -1.2328,  2.6697,  0.3100, -0.4884,  1.4863,  1.7033, 0.7149, -0.8305]])
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
        c16 [ a, d e ees fis aes a bes c' ees' d' e' a' fis' aes' ees'' bes' c'' bes' ees'' aes' fis' a' e' d' ees' c' bes a aes fis ees e d a, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    