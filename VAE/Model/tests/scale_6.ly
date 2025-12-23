% z vector: tensor([[-1.4235, -0.4775, -0.7239, -1.7075, -1.7377,  1.5262, -0.7135,  1.6966, 0.8568, -0.1814]])
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
        c16 [ cis' f aes g' e' e' cis'' b' c'' g'' f'' aes'' cis''' bes'' e''' g''' f''' cis''' a''' g''' e''' bes'' cis''' aes'' f'' g'' c'' b' cis'' e' e' g' aes bes cis' ]
    c
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    