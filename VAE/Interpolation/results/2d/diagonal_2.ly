
    \version "2.22.2"
    \header {
    title = "Interpolation"
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
    
%Scale 0_4
        ^\markup \bold { "step 0_4" }
    \clef treble
    c16 [ e bes fis ais e' ]
    c' [ e' bes' fis' ais' e'' ]
    c'' [ e'' bes'' fis'' ais'' e''' ]
    c''' [ e''' ais'' fis'' bes'' e'' ]
    c'' [ e'' ais' fis' bes' e' ]
    c' [ e' ais fis bes e ]
    c    r8
    \bar ""
    \break
        
%Scale 1_3
        ^\markup \bold { "step 1_3" }
    \clef treble
    c16 [ cis' bes fis g' e' ]
    c' [ cis'' bes' fis' g'' e'' ]
    c'' [ cis''' bes'' fis'' g''' e''' ]
    c''' [ e''' g''' fis'' bes'' cis''' ]
    c'' [ e'' g'' fis' bes' cis'' ]
    c' [ e' g' fis bes cis' ]
    c    r8
    \bar ""
    \break
        
%Scale 3_1
        ^\markup \bold { "step 3_1" }
    \clef treble
    c16 [ cis' g fis g' d' ]
    c' [ f' e' fis' g'' d'' ]
    c'' [ cis''' a'' fis'' g''' d''' ]
    c''' [ d''' g''' fis'' a'' cis''' ]
    c'' [ d'' g'' fis' a' f' ]
    c' [ d' g' fis g cis' ]
    c    r8
    \bar ""
    \break
        
%Scale 4_0
        ^\markup \bold { "step 4_0" }
    \clef treble
    c16 [ a, g fis b d' ]
    c' [ f g' fis' a d'' ]
    c'' [ cis' e'' fis'' f' d''' ]
    c''' [ d''' f' fis'' e'' cis''' ]
    c'' [ d'' a fis' g' f ]
    c' [ d' gis fis g a, ]
    c    r8
    \bar ""
    \break
        
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
        \override Stem.transparent = ##t
    }
    \midi{ }
    
    }
    