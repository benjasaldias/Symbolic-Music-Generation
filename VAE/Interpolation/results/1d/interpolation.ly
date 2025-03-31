
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
    c16 [ cis' g fis b d' c' bes' g' fis' b' d'' c'' cis''' g'' fis'' b'' d''' c''' d''' b'' fis'' g'' b'' c'' d'' b' fis' g' bes' c' d' b fis g cis' ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ cis' aes fis b d' c' cis'' aes' fis' b' d'' c'' cis''' g'' fis'' b'' d''' c''' d''' b'' fis'' g'' cis''' c'' d'' b' fis' aes' cis'' c' d' b fis aes cis' ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ cis' aes fis b d' c' cis'' aes' fis' b' d'' c'' cis''' aes'' fis'' g''' d''' c''' d''' g''' fis'' aes'' cis''' c'' d'' b' fis' aes' cis'' c' d' b fis aes cis' ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ cis' aes fis b d' c' a aes' fis' b' d'' c'' cis''' aes'' fis'' g''' d''' c''' d''' g''' fis'' aes'' cis''' c'' d'' g'' fis' aes' a c' d' b fis aes cis' ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ cis' aes d b d' c' a aes' fis' d' d'' c'' cis''' aes'' fis'' ees'' d''' c''' d''' ees'' fis'' aes'' cis''' c'' d'' d' fis' aes' a c' d' b d aes cis' ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    c16 [ cis' aes d ees d' c' a e' fis' d' d'' c'' a' aes'' fis'' ees'' d''' c''' d''' ees'' fis'' aes'' a' c'' d'' d' fis' e' a c' d' ees d aes cis' ]
    c    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    bes,16 [ cis' aes d ees c' ees' a e' bes ees' aes' c'' a' c'' g'' ees'' d''' c''' e'' ees'' g'' c'' a' c'' aes' ees' bes e' a ees' c' ees d aes cis' ]
    bes,    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    bes,16 [ a, aes d ees c' ees' a e' bes ees' aes' d' a' c'' fis' ees'' e'' bes' e'' ees'' fis' c'' a' d' aes' ees' bes e' a b c' ees d aes g ]
    bes,    r8
    \bar ""
    \break
        
%scale 8
    ^\markup \bold { "step 8" }
    \clef treble
    bes,16 [ a, aes d ees c' fis a e' bes ees' aes' d' a' c'' fis' ees'' e'' bes' e'' ees'' fis' c'' a' d' aes' ees' bes e' a fis c' ees d aes g ]
    bes,    r8
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
    