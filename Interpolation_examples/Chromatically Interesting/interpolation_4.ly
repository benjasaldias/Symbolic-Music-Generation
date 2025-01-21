% The last scales explore diminished scales with jazzy features and chromaticisms.
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
    {
    
%scale 1
    \clef treble
    c16 [ d g e fis b gis bes ees' ]
    c' [ d' g' e' fis' b' gis' bes' d'' ]
    c'' [ d'' bes' gis' b' fis' e' g' d' ]
    c' [ ees' bes gis b fis e g d ]
    c    r8
    \bar ""
    \break
        
%scale 2
    \mark \markup \bold { "Scale 2" }
    \clef treble
    c16 [ d fis e fis b gis fis d' ]
    c' [ d' fis' e' fis' b' gis' bes' d'' ]
    c'' [ d'' bes' gis' b' fis' e' fis' d' ]
    c' [ d' fis gis b fis e fis d ]
    c    r8
    \bar ""
    \break
        
%scale 3
    \mark \markup \bold { "Scale 3" }
    \clef treble
    c16 [ d fis e bes des' gis fis d' ]
    c' [ d' fis' e' fis' b' gis' bes' d'' ]
    c'' [ d'' bes' gis' b' fis' e' fis' d' ]
    c' [ d' fis gis des' bes e fis d ]
    c    r8
    \bar ""
    \break
        
%scale 4
    \mark \markup \bold { "Scale 4" }
    \clef treble
    c16 [ d fis e bes des' gis fis d' ]
    c' [ d'' fis' e' bes'' des''' gis' fis''' d'' ]
    c'' [ d'' fis''' gis' des''' bes'' e' fis' d'' ]
    c' [ d' fis gis des' bes e fis d ]
    c    r8
    \bar ""
    \break
        
%scale 5
    \mark \markup \bold { "Scale 5" }
    \clef treble
    c16 [ d f aes bes des' e' fis a' ]
    c'' [ d'' f'' aes'' bes'' des''' e''' fis''' a''' ]
    c'''' [ a''' fis''' e''' des''' bes'' aes'' f'' d'' ]
    c'' [ a' fis e' des' bes aes g d ]
    c    r8
    \bar ""
    \break
        
%scale 6
    \mark \markup \bold { "Scale 6" }
    \clef treble
    c16 [ d f aes b des' e' fis' a' ]
    c'' [ d'' f'' aes'' b'' des''' e''' fis''' a''' ]
    c'''' [ a''' fis''' e''' des''' b'' aes'' f'' d'' ]
    c'' [ a' fis' e' des' b aes g d ]
    c    r8
    \bar ""
    \break
        
%scale 7
    \mark \markup \bold { "Scale 7" }
    \clef treble
    c16 [ ees g aes b des' e' g' a' ]
    c'' [ ees'' f'' aes'' b'' dis''' e''' g''' a''' ]
    c'''' [ a''' g''' e''' dis''' b'' aes'' f'' ees'' ]
    c'' [ a' g' e' des' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 8
    \mark \markup \bold { "Scale 8" }
    \clef treble
    c16 [ ees g aes b des' e' g' a' ]
    c'' [ ees'' f'' aes'' b'' dis''' e''' g''' a''' ]
    c'''' [ a''' g''' e''' dis''' b'' aes'' f'' ees'' ]
    c'' [ a' g' e' des' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 9
    \mark \markup \bold { "Scale 9" }
    \clef treble
    c16 [ ees g aes b des' e' g' a' ]
    c'' [ ees'' f'' aes'' b'' dis''' e''' g''' b''' ]
    c'''' [ b''' g''' e''' dis''' b'' aes'' f'' ees'' ]
    c'' [ a' g' e' des' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 10
    \mark \markup \bold { "Scale 10" }
    \clef treble
    c16 [ ees f fis b dis' ]
    c' [ cis' b' fis' g' f'' ]
    c'' [ b'' g'' fis'' g'' e''' ]
    c''' [ e''' g'' fis'' g'' b'' ]
    c'' [ f'' g' fis' b' cis' ]
    c' [ dis' b fis g cis ]
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
    