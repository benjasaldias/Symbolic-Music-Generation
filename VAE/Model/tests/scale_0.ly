% z vector: tensor([[-1.1263, -1.1015,  1.2940,  3.3076, -0.8299,  0.1636, -0.2999, -1.4105, 0.5319, -1.1145, -0.3123, -2.9214]])
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
        d16 [ f aes e a c' aes cis' e' c' f' aes' e' a' c'' aes' a' e'' c'' e'' a' aes' c'' a' e' aes' f' c' e' cis' aes c' a e aes f ]
    d
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    