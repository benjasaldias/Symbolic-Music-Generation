
    \version "2.22.2"
    \header {
    title = "Interpolation"
    composer = "Benjamín Saldías"
    }

    \score {
    <<
        \cadenzaOn
        \override Beam.breakable = ##t

    {
    
%scale 0_0
    \clef treble
    c16 [ a e des' gis f' ]
    c' [ a' e' des'' gis' f'' ]
    c'' [ a'' e'' des''' gis'' f''' ]
    c''' [ f''' gis'' des''' e'' a'' ]
    c'' [ f'' gis' des'' e' a' ]
    c' [ f' gis des' e a ]
    c    r8
    \bar ""
    \break
        
%scale 1_1
    \mark \markup \bold { "Scale 1_1" }
    \clef treble
    c16 [ a g des' gis f' e' a' b' des'' gis' f'' ]
    c'' [ a'' e'' des''' gis'' f''' ]
    c'''' [ f''' gis'' des''' e'' a'' ]
    c'' [ f'' gis' des'' b' a' e' f' gis des' g a ]
    c    r8
    \bar ""
    \break
        
%scale 2_2
    \mark \markup \bold { "Scale 2_2" }
    \clef treble
    c16 [ d g aes bes f' e' fis' b' ]
    c'' [ d'' g'' aes'' b'' ees''' e''' fis''' b''' ]
    c'''' [ b''' fis''' e''' ees''' b'' aes'' g'' d'' ]
    c'' [ b' fis' e' f' bes aes g d ]
    c    r8
    \bar ""
    \break
        
%scale 3_3
    \mark \markup \bold { "Scale 3_3" }
    \clef treble
    c16 [ aes g fis d' f' ]
    c' [ aes' b' fis' d'' f'' ]
    c'' [ aes'' g'' fis'' d''' f''' ]
    c''' [ f''' d''' fis'' g'' aes'' ]
    c'' [ f'' d'' fis' b' aes' ]
    c' [ f' d' fis g aes ]
    c    r8
    \bar ""
    \break
        
%scale 4_4
    \mark \markup \bold { "Scale 4_4" }
    \clef treble
    c16 [ d g fis d' des' ]
    c' [ e' a' fis' d'' f'' ]
    c'' [ aes'' g'' fis'' d''' d''' ]
    c''' [ d''' d''' fis'' g'' e'' ]
    c'' [ f'' d'' fis' g' aes' ]
    c' [ des' ais fis g d ]
    c    r8
    \bar ""
    \break
        
    }
    >>
    \layout {
        indent = 0\mm
        line-width = 190\mm
    }
    \midi{ }
    
    }
    