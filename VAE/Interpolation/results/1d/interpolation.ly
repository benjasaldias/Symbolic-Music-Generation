
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
    
%scale 0
    \clef treble
        ^\markup \bold { "step 0" }
    c16 [ d aes b aes f' f' cis' a' b' aes' cis'' f'' d'' f'' b'' aes'' a'' f''' a'' aes'' b'' f'' d'' f'' ees'' aes' b' a' cis' f' f' aes b aes d ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ a, ees fis ees c' c' a e' fis' ees' aes' c'' a' c'' fis'' ees'' e'' c''' e'' ees'' fis'' c'' a' c'' aes' ees' fis' e' a c' c' ees fis ees a, ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ a, aes fis ees c' c' a e' fis' ees' aes' c'' cis' c'' fis'' ees'' e'' c''' e'' ees'' fis'' c'' cis' c'' aes' ees' fis' e' a c' c' ees fis aes a, ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ a, aes fis ees c' c' a aes' fis' ees' d'' c'' cis' c'' fis'' ees'' e'' c''' e'' ees'' fis'' c'' cis' c'' d'' ees' fis' aes' a c' c' ees fis aes a, ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ a, aes fis ees c' c' a aes' fis' ees' d'' c'' cis' aes'' fis'' ees'' c''' c''' c''' ees'' fis'' aes'' cis' c'' d'' ees' fis' aes' a c' c' ees fis aes a, ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    c16 [ a, aes e ees c' c' a' aes' fis' ees'' c'' c'' a'' aes'' fis'' ees''' c''' c''' c''' ees''' fis'' aes'' a'' c'' c'' ees'' fis' aes' a' c' c' ees e aes a, ]
    c    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    c16 [ a, aes e ees' c' c' a' aes' e' ees'' c'' c'' a'' aes'' e'' ees''' c''' c''' c''' ees''' e'' aes'' a'' c'' c'' ees'' e' aes' a' c' c' ees' e aes a, ]
    c    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    c16 [ b, bes fis f' d' c' b' bes' fis' f'' d'' c'' b'' aes'' fis'' g''' d''' c''' d''' f''' fis'' aes'' b'' c'' d'' f'' fis' bes' b' c' d' g' fis bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 8
    ^\markup \bold { "step 8" }
    \clef treble
    c16 [ cis' g fis g' d' c' b' bes' fis' f'' d'' c'' cis''' aes'' fis'' g''' d''' c''' d''' f''' fis'' aes'' cis''' c'' d'' f'' fis' bes' b' c' d' g' fis g cis' ]
    c    r8
    \bar ""
    \break
        
%scale 9
    ^\markup \bold { "step 9" }
    \clef treble
    c16 [ cis' g fis e' e' c' b' a' fis' f'' ees'' c'' cis''' aes'' fis'' g''' d''' c''' d''' f''' fis'' a'' cis''' c'' d'' f'' fis' bes' b' c' ees' e' fis g cis' ]
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
    