% z vector: tensor([[-3.0749, -0.9147, -0.5311, -2.8995, -0.3975,  0.5506,  1.8138, -0.0340,-0.4259,  1.1366,  0.3148,  0.3414]])
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
        b,16 [ bes, c, ees d e' g fis aes' b bes c ees' d' e'' g' fis' aes'' b' aes fis' g' e'' d' ees' c bes b aes' fis g e, d ees g, bes, ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    