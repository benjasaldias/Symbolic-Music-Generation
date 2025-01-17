
    \version "2.22.2"
    \header {
    title = "Interpolation"
    composer = "Benjamín Saldías"
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
        
%Scale 0_1
        ^\markup \bold { "step 0_1" }
    \clef treble
    c16 [ f b fis b dis' ]
    c' [ f' g' fis' b' b' ]
    c'' [ f'' cis'' fis'' b'' b'' ]
    c''' [ b'' b'' fis'' cis'' f'' ]
    c'' [ b' b' fis' g' f' ]
    c' [ dis' b fis b f ]
    c    r8
    \bar ""
    \break
        
%Scale 0_2
        ^\markup \bold { "step 0_2" }
    \clef treble
    c16 [ f bes fis b e' ]
    c' [ f' bes' fis' b' e'' ]
    c'' [ f'' bes'' fis'' b'' e''' ]
    c''' [ e''' b'' fis'' bes'' f'' ]
    c'' [ e'' b' fis' bes' f' ]
    c' [ e' b fis bes f ]
    c    r8
    \bar ""
    \break
        
%Scale 0_3
        ^\markup \bold { "step 0_3" }
    \clef treble
    c16 [ e bes fis ais e' ]
    c' [ f' bes' fis' ais' e'' ]
    c'' [ e'' bes'' fis'' ais'' e''' ]
    c''' [ e''' ais'' fis'' bes'' e'' ]
    c'' [ e'' ais' fis' bes' e' ]
    c' [ e' ais fis bes e ]
    c    r8
    \bar ""
    \break
        
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
        
%Scale 1_0
        ^\markup \bold { "step 1_0" }
    \clef treble
    c16 [ f b fis b cis' ]
    c' [ f' g' fis' b' b' ]
    c'' [ f'' cis'' fis'' b'' b'' ]
    c''' [ b'' b'' fis'' cis'' f'' ]
    c'' [ b' b' fis' g' f' ]
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
        
%Scale 1_2
        ^\markup \bold { "step 1_2" }
    \clef treble
    c16 [ f bes fis b e' ]
    c' [ f' bes' fis' b' e'' ]
    c'' [ f'' bes'' fis'' b'' e''' ]
    c''' [ e''' b'' fis'' bes'' f'' ]
    c'' [ e'' b' fis' bes' f' ]
    c' [ e' b fis bes f ]
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
        
%Scale 1_4
        ^\markup \bold { "step 1_4" }
    \clef treble
    c16 [ b gis fis gis e' ]
    c' [ b' e' fis' gis' e'' ]
    c'' [ b'' a'' fis'' gis'' e''' ]
    c''' [ e''' gis'' fis'' a'' b'' ]
    c'' [ e'' gis' fis' e' b' ]
    c' [ e' gis fis gis b ]
    c    r8
    \bar ""
    \break
        
%Scale 2_0
        ^\markup \bold { "step 2_0" }
    \clef treble
    c16 [ f g fis b cis' ]
    c' [ f' g' fis' b' cis'' ]
    c'' [ f'' cis'' fis'' b'' cis''' ]
    c''' [ cis''' b'' fis'' cis'' f'' ]
    c'' [ cis'' b' fis' g' f' ]
    c' [ cis' b fis g f ]
    c    r8
    \bar ""
    \break
        
%Scale 2_1
        ^\markup \bold { "step 2_1" }
    \clef treble
    c16 [ f a fis b d' ]
    c' [ f' g' fis' b' d'' ]
    c'' [ f'' a'' fis'' b'' d''' ]
    c''' [ d''' b'' fis'' a'' f'' ]
    c'' [ d'' b' fis' g' f' ]
    c' [ d' b fis a f ]
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
        
%Scale 2_3
        ^\markup \bold { "step 2_3" }
    \clef treble
    c16 [ b a fis gis d' ]
    c' [ b' a' fis' gis' d'' ]
    c'' [ b'' a'' fis'' gis'' d''' ]
    c''' [ d''' gis'' fis'' a'' b'' ]
    c'' [ d'' gis' fis' a' b' ]
    c' [ d' gis fis a b ]
    c    r8
    \bar ""
    \break
        
%Scale 2_4
        ^\markup \bold { "step 2_4" }
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
        
%Scale 3_0
        ^\markup \bold { "step 3_0" }
    \clef treble
    c16 [ f g fis b d' ]
    c' [ f g' fis' b' d'' ]
    c'' [ f'' g'' fis'' b'' d''' ]
    c''' [ d''' b'' fis'' g'' f'' ]
    c'' [ d'' b' fis' g' f ]
    c' [ d' b fis g f ]
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
        
%Scale 3_2
        ^\markup \bold { "step 3_2" }
    \clef treble
    c16 [ cis' a fis gis d' ]
    c' [ cis'' a' fis' gis' d'' ]
    c'' [ cis''' a'' fis'' gis'' d''' ]
    c''' [ d''' gis'' fis'' a'' cis''' ]
    c'' [ d'' gis' fis' a' cis'' ]
    c' [ d' gis fis a cis' ]
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
        
%Scale 3_4
        ^\markup \bold { "step 3_4" }
    \clef treble
    c16 [ b e fis f' ees' ]
    c' [ b' a' fis' f'' ees'' ]
    c'' [ b'' a'' fis'' f''' ees''' ]
    c''' [ ees''' f''' fis'' a'' b'' ]
    c'' [ ees'' f'' fis' a' b' ]
    c' [ ees' f' fis e b ]
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
        
%Scale 4_1
        ^\markup \bold { "step 4_1" }
    \clef treble
    c16 [ a, gis fis gis d' ]
    c' [ f e' fis' gis' d'' ]
    c'' [ cis''' e'' fis'' gis'' d''' ]
    c''' [ d''' gis'' fis'' gis'' cis''' ]
    c'' [ d'' g'' fis' e' f ]
    c' [ d' gis fis gis a, ]
    c    r8
    \bar ""
    \break
        
%Scale 4_2
        ^\markup \bold { "step 4_2" }
    \clef treble
    c16 [ b gis fis gis d' ]
    c' [ b' gis' fis' gis' d'' ]
    c'' [ b'' a'' fis'' gis'' d''' ]
    c''' [ d''' gis'' fis'' a'' b'' ]
    c'' [ d'' gis' fis' gis' b' ]
    c' [ d' gis fis gis b ]
    c    r8
    \bar ""
    \break
        
%Scale 4_3
        ^\markup \bold { "step 4_3" }
    \clef treble
    c16 [ b e fis f' d' ]
    c' [ b' a' fis' f'' d'' ]
    c'' [ b'' a'' fis'' e'' d''' ]
    c''' [ d''' e'' fis'' a'' b'' ]
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
    