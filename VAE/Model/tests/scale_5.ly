% z vector: tensor([[ 1.6636,  1.1815, -0.0400,  0.5563, -0.9018,  1.5439, -0.3228,  0.3965, 0.9757, -0.7258,  0.4764,  0.7278]])
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
        c16 [ g, bes, f cis e c' ees' bes f' cis' e' b' g' bes' f'' cis'' e'' b'' e'' cis'' f'' bes' g' b' e' cis' f' bes ees' c' e cis f bes, g, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    