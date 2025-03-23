
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
    c16 [ cis e fis aes a ]
    c' [ ees' e' fis' cis' a' ]
    c'' [ f' ees'' bes' aes'' a'' ]
    c''' [ a'' aes'' bes' ees'' f' ]
    c'' [ a' g' fis' e' a ]
    c' [ a aes fis e cis ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ cis e fis aes a ]
    c' [ a e' fis' aes' a' ]
    c'' [ f' ees'' fis'' aes'' a'' ]
    c''' [ a'' aes'' fis'' ees'' f' ]
    c'' [ a' g' fis' e' a ]
    c' [ a aes fis e cis ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ cis ees fis aes a ]
    c' [ a ees' fis' g' a' ]
    c'' [ f' ees'' fis'' aes'' a'' ]
    c''' [ a'' aes'' fis'' ees'' f' ]
    c'' [ a' g' fis' ees' a ]
    c' [ a aes fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ cis ees fis g a ]
    c' [ a ees' fis' g' a' ]
    c'' [ f' ees'' fis'' aes'' a'' ]
    c''' [ a'' aes'' fis'' ees'' f' ]
    c'' [ a' g' fis' ees' a ]
    c' [ a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ cis ees fis g a ]
    c' [ a ees' fis' g' a' ]
    c'' [ g' ees'' fis'' g'' a'' ]
    c''' [ a'' g'' fis'' ees'' g' ]
    c'' [ a' g' fis' ees' a ]
    c' [ a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    c16 [ cis ees fis g a ]
    c' [ g ees' fis' g' a' ]
    c'' [ g' ees'' fis'' g'' a'' ]
    c''' [ a'' g'' fis'' ees'' g' ]
    c'' [ a' g' fis' ees' g ]
    c' [ a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    c16 [ cis g fis g a ]
    c' [ g ees' fis' cis' a' ]
    c'' [ g' ees'' fis'' cis'' a'' ]
    c''' [ ees'' cis'' fis'' ees'' g' ]
    c'' [ a' cis' fis' ees' g ]
    c' [ a g fis ees cis ]
    c    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    c16 [ aes, g fis ees cis' ]
    c' [ g g' fis' d' cis'' ]
    c'' [ aes' a' fis'' cis'' cis''' ]
    c''' [ cis''' cis'' fis'' a' aes' ]
    c'' [ cis'' d' fis' g' g ]
    c' [ cis' ees fis g b, ]
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
    