
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
        
%scale 0_1
    \mark \markup \bold { "Scale 0_1" }
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
        
%scale 0_2
    \mark \markup \bold { "Scale 0_2" }
    \clef treble
    c16 [ d g aes ]
    c' [ ees' e' gis' b' ]
    c'' [ e'' g'' aes'' ]
    c''' [ ees''' e''' gis''' b''' ]
    c'''' [ b''' gis''' e''' ees''' ]
    c''' [ aes'' g'' e'' ]
    c'' [ b' gis' e' ees' ]
    c' [ aes g d ]
    c    r8
    \bar ""
    \break
        
%scale 0_3
    \mark \markup \bold { "Scale 0_3" }
    \clef treble
    c16 [ g, f aes b, des' e' gis' b' ]
    c'' [ e'' g'' aes'' b ees''' e''' gis''' b''' ]
    c'''' [ b''' gis''' e''' ees''' b aes'' g'' e'' ]
    c'' [ b' gis' e' des' b, aes f e ]
    c    r8
    \bar ""
    \break
        
%scale 0_4
    \mark \markup \bold { "Scale 0_4" }
    \clef treble
    c16 [ g, f e b, a gis ees a ]
    c' [ g f' e' b a' gis' ees' des'' ]
    c'' [ des'' ees' gis' a' b e' f' g ]
    c' [ a ees gis a b, e f g, ]
    c    r8
    \bar ""
    \break
        
%scale 1_0
    \mark \markup \bold { "Scale 1_0" }
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
        
%scale 1_2
    \mark \markup \bold { "Scale 1_2" }
    \clef treble
    c16 [ d g aes ]
    c' [ ees' e' gis' b' ]
    c'' [ e'' g'' aes'' ]
    c''' [ ees''' e''' gis''' b''' ]
    c'''' [ b''' gis''' e''' ees''' ]
    c''' [ aes'' g'' e'' ]
    c'' [ b' gis' e' ees' ]
    c' [ aes g d ]
    c    r8
    \bar ""
    \break
        
%scale 1_3
    \mark \markup \bold { "Scale 1_3" }
    \clef treble
    c16 [ e g aes ]
    c' [ ees' e' gis' b' ]
    c'' [ e'' g'' aes'' ]
    c''' [ ees''' e''' gis''' b''' ]
    c'''' [ b''' gis''' e''' ees''' ]
    c''' [ aes'' g'' e'' ]
    c'' [ b' gis' e' ees' ]
    c' [ aes g e ]
    c    r8
    \bar ""
    \break
        
%scale 1_4
    \mark \markup \bold { "Scale 1_4" }
    \clef treble
    c16 [ e f aes des' ees' e' a' a' ]
    c'' [ e'' g'' aes'' des''' ees''' e''' a''' bes''' ]
    c'''' [ bes''' a''' e''' ees''' des''' aes'' g'' e'' ]
    c'' [ a' a' e' ees' des' aes f f ]
    c    r8
    \bar ""
    \break
        
%scale 2_0
    \mark \markup \bold { "Scale 2_0" }
    \clef treble
    c16 [ a b des' gis dis' gis f' b' des'' gis' g'' e' a'' dis''' des''' gis'' b''' ]
    c'' [ b''' gis'' des''' dis''' a'' e' g'' gis' des'' b' f' gis dis' gis des' b a ]
    c    r8
    \bar ""
    \break
        
%scale 2_1
    \mark \markup \bold { "Scale 2_1" }
    \clef treble
    c16 [ a g aes gis f' e' f' b' ]
    c'' [ gis' g'' aes'' a'' dis''' e''' gis'' b''' ]
    c'''' [ b''' gis'' e''' dis''' a'' aes'' g'' gis' ]
    c'' [ b' f' e' f' gis aes g a ]
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
        
%scale 2_3
    \mark \markup \bold { "Scale 2_3" }
    \clef treble
    c16 [ aes g aes bes ees' e' aes' b' ]
    c'' [ d'' g'' aes'' aes'' ees''' e''' d''' b''' ]
    c'''' [ b''' d''' e''' ees''' aes'' aes'' g'' d'' ]
    c'' [ b' aes' e' ees' bes aes g aes ]
    c    r8
    \bar ""
    \break
        
%scale 2_4
    \mark \markup \bold { "Scale 2_4" }
    \clef treble
    c16 [ cis' g fis g' ees' ]
    c' [ cis'' a' fis' d'' f'' aes'' cis''' a'' fis'' g''' ees''' ]
    c''' [ ees''' g''' fis'' a'' cis''' aes'' f'' d'' fis' a' cis'' ]
    c' [ ees' g' fis g cis' ]
    c    r8
    \bar ""
    \break
        
%scale 3_0
    \mark \markup \bold { "Scale 3_0" }
    \clef treble
    c16 [ cis g e a dis' e' f' b' ]
    c'' [ ees'' g'' e' a'' dis''' e''' f''' b''' ]
    c'''' [ b''' f''' e''' dis''' a'' e' g'' cis'' ]
    c'' [ b' f' e' dis' a e g cis ]
    c    r8
    \bar ""
    \break
        
%scale 3_1
    \mark \markup \bold { "Scale 3_1" }
    \clef treble
    c16 [ ees g aes b dis' e' fis' b' ]
    c'' [ ees'' g'' aes'' a'' dis''' e''' fis''' b''' ]
    c'''' [ b''' fis''' e''' dis''' a'' aes'' g'' ees'' ]
    c'' [ b' fis' e' dis' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 3_2
    \mark \markup \bold { "Scale 3_2" }
    \clef treble
    c16 [ d g fis d' f' ]
    c' [ aes' b' fis' d'' g'' ]
    c'' [ aes'' b'' fis'' d''' b''' ]
    c''' [ b''' d''' fis'' b'' aes'' ]
    c'' [ g'' d'' fis' b' aes' ]
    c' [ f' d' fis g d ]
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
        
%scale 3_4
    \mark \markup \bold { "Scale 3_4" }
    \clef treble
    c16 [ aes g fis d' ees' ]
    c' [ aes' a' fis' d'' des'' ]
    c'' [ aes'' a'' fis'' d''' des''' ]
    c''' [ des''' d''' fis'' a'' aes'' ]
    c'' [ des'' d'' fis' a' aes' ]
    c' [ ees' d' fis g aes ]
    c    r8
    \bar ""
    \break
        
%scale 4_0
    \mark \markup \bold { "Scale 4_0" }
    \clef treble
    c16 [ cis g e ]
    c [ dis' e' f' b' ]
    c'' [ aes g'' e' a'' dis''' e''' e' b''' ]
    c'''' [ b''' e' e''' dis''' a'' e' g'' ees'' ]
    c'' [ b' f' e' dis' ]
    c [ e g cis ]
    c    r8
    \bar ""
    \break
        
%scale 4_1
    \mark \markup \bold { "Scale 4_1" }
    \clef treble
    c16 [ ees g aes b dis' e' fis' b' ]
    c'' [ ees'' g'' aes'' a'' dis''' e''' g''' b''' ]
    c'''' [ b''' g''' e''' dis''' a'' aes'' g'' ees'' ]
    c'' [ b' fis' e' dis' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 4_2
    \mark \markup \bold { "Scale 4_2" }
    \clef treble
    c16 [ aes g fis d' f' ]
    c' [ aes' b' fis' d'' f'' ]
    c'' [ aes'' b'' fis'' d''' f''' ]
    c''' [ f''' d''' fis'' b'' aes'' ]
    c'' [ f'' d'' fis' b' aes' ]
    c' [ f' d' fis g aes ]
    c    r8
    \bar ""
    \break
        
%scale 4_3
    \mark \markup \bold { "Scale 4_3" }
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
    