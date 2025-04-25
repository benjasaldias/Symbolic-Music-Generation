% z vector: tensor([[-0.6899,  1.3846, -0.7098,  0.9364,  2.3210,  0.7541,  0.0864,  2.7677,-0.5470,  1.6536]])
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
        c16 [ aes cis, b bes f, f' bes' a, b' fis' cis f'' c'' cis'' b'' d'' a f''' a d'' b'' cis'' c'' f'' cis fis' b' a, bes' f' f, fis b cis, aes ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    