% z vector: tensor([[ 0.6141,  3.4136, -1.2061,  2.2566,  1.3532,  2.1154,  0.5446,  0.6862,-0.5216, -1.7576]])
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
        c16 [ cis f fis f a bes a ees' d' cis' f' fis' f' a' bes' a' cis'' d'' cis'' a' bes' a' f' fis' f' cis' d' ees' a bes a f fis f cis ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    