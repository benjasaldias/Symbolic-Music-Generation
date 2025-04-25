
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
    c16 [ cis e f aes a c' cis' e' f' aes' a' c'' cis'' e'' f'' aes'' a'' c''' a'' aes'' f'' e'' cis'' c'' a' aes' f' e' cis' c' a aes f e cis ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ cis e fis aes a c' cis' e' fis' aes' a' c'' cis'' e'' fis'' aes'' a'' c''' a'' aes'' fis'' e'' cis'' c'' a' aes' fis' e' cis' c' a aes fis e cis ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ cis ees fis g a c' cis' e' fis' aes' a' c'' cis'' ees'' fis'' g'' a'' c''' a'' g'' fis'' ees'' cis'' c'' a' g' fis' ees' cis' c' a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ cis ees fis g a c' cis' ees' fis' g' a' c'' cis'' ees'' fis'' g'' a'' c''' a'' g'' fis'' ees'' cis'' c'' a' g' fis' ees' cis' c' a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ cis ees fis g b c' cis' ees' fis' g' b' c'' cis'' ees'' fis'' g'' b'' c''' b'' g'' fis'' ees'' cis'' c'' b' g' fis' ees' cis' c' b g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    c16 [ cis d fis g b c' cis' ees' fis' g' b' c'' cis'' ees'' fis'' g'' b'' c''' b'' g'' fis'' ees'' cis'' c'' b' g' fis' ees' cis' c' b g fis d cis ]
    c    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    c16 [ cis d fis g b c' cis' d' fis' bes' b' c'' cis'' d'' fis'' g'' b'' c''' b'' g'' fis'' d'' cis'' c'' b' bes' fis' d' cis' c' b g fis d cis ]
    c    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    c16 [ cis d fis bes b c' cis' d' fis' bes' b' c'' cis'' d'' fis'' bes'' b'' c''' b'' bes'' fis'' d'' cis'' c'' b' bes' fis' d' cis' c' b bes fis d cis ]
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
    