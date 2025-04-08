% z vector: tensor([[ 0.4017, -1.3658, -2.1373, -2.6929,  2.1329, -0.9420, -1.1582, -1.3059,-1.5510,  0.0070, -0.5716, -0.9195]])
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
        c16 [ a, d ees cis fis aes f bes c' a g e' cis' b aes' f' ees' c'' ees' f' aes' b cis' e' g a c' bes f aes fis cis ees g, a, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    