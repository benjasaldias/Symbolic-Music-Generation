% z vector: tensor([[-0.3634,  0.2159,  0.4135,  0.6924, -0.9876,  0.1905,  1.4939,  1.0434, 0.9254,  0.9054, -1.5849,  0.0727]])
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
        b,16 [ e d g aes cis' b e' g' f' bes' cis'' b' e'' g'' f'' aes'' cis''' b'' cis''' aes'' f'' g'' e'' b' cis'' bes' f' g' e' b cis' aes g d e ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    