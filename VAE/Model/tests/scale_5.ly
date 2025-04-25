% z vector: tensor([[-0.8346,  0.0688, -0.6233, -1.2550, -0.4199,  1.3293,  1.8980,  1.0698, 0.7005,  2.2581]])
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
        c16 [ aes, g aes a bes aes d' ees' c' f' bes' d'' a' b' aes' bes'' ees'' d''' ees'' bes'' aes' b' a' d'' bes' f' c' ees' d' aes bes a aes g aes, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    