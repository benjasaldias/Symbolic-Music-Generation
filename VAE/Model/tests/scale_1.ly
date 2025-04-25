% z vector: tensor([[-0.0349, -1.9820,  3.0220, -2.1416, -0.5932, -2.0573, -3.8411,  0.6615, 0.3134, -0.5941]])
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
        c16 [ a, g e g cis' bes cis' g' fis' g' cis'' c'' cis'' g'' e'' g'' cis''' c''' cis''' g'' e'' g'' cis'' c'' cis'' g' fis' g' cis' bes cis' g e g a, ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    