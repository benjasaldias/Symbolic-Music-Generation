% z vector: tensor([[-2.6497e-01, -3.3503e+00,  1.6529e+00, -8.2597e-01, -1.6211e+00,-1.9821e+00, -1.3004e+00,  2.9992e-02,  3.6864e+00,  2.0076e+00,
        %   5.6287e-04, -3.2564e+00]])
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
        b,16 [ c aes ees e c' g aes e' b c' aes' ees' e' c'' g' aes' e'' b' e'' aes' g' c'' e' ees' aes' c' b e' aes g c' e ees aes c ]
    b,
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }    
    }
    
    