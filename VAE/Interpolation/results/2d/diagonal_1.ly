
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
    
%Scale 0_0
    \clef treble
        ^\markup \bold { "step 0_0" }
    c16 [ f b fis b cis' gis ees' g' fis' b' b' e' f'' cis'' fis'' b'' g'' ]
    c'' [ g'' b'' fis'' cis'' f'' ]
    c'' [ b' b' fis' g' ees' ]
    c' [ cis' b fis b f ]
    c    r8
    \bar ""
    \break
        
%Scale 1_1
        ^\markup \bold { "step 1_1" }
    \clef treble
    c16 [ f b fis b cis' ]
    c' [ f' g' fis' b' b' ]
    c'' [ f'' cis'' fis'' b'' b'' ]
    c''' [ b'' b'' fis'' cis'' f'' ]
    c'' [ b' b' fis' g' f' ]
    c' [ e' b fis b f ]
    c    r8
    \bar ""
    \break
        
%Scale 2_2
        ^\markup \bold { "step 2_2" }
    \clef treble
    c16 [ cis' a fis g' d' ]
    c' [ cis'' a' fis' g'' d'' ]
    c'' [ cis''' a'' fis'' g''' d''' ]
    c''' [ d''' g''' fis'' a'' cis''' ]
    c'' [ d'' g'' fis' a' cis'' ]
    c' [ d' g' fis a cis' ]
    c    r8
    \bar ""
    \break
        
%Scale 3_3
        ^\markup \bold { "step 3_3" }
    \clef treble
    c16 [ b a fis f' d' ]
    c' [ b' a' fis' f'' d'' ]
    c'' [ b'' a'' fis'' f''' d''' ]
    c''' [ d''' f''' fis'' a'' b'' ]
    c'' [ d'' f'' fis' a' b' ]
    c' [ d' f' fis a b ]
    c    r8
    \bar ""
    \break
        
%Scale 4_4
        ^\markup \bold { "step 4_4" }
    \clef treble
    c16 [ g, e fis cis ees' ]
    c' [ g e' fis' cis' bes' ]
    c'' [ g' e'' fis'' cis'' bes'' ]
    c''' [ bes'' cis'' fis'' e'' g' ]
    c'' [ bes' cis' fis' e' g ]
    c' [ ees' cis fis e g, ]
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
    