
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
    c16 [ b, a e ees fis aes g f' c' b a' e' ees' cis'' aes' g' f'' c'' f'' g' aes' cis'' ees' e' a' b c' f' g aes fis ees e a b, ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ b, a e ees fis aes g f' c' b bes' e' ees' cis'' aes' g' fis'' c'' f'' g' aes' cis'' ees' e' bes' b c' f' g aes fis ees e a b, ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ b, aes, e ees fis aes g f' c' b aes e' ees' c' aes' g' fis'' c'' fis'' g' aes' c' ees' e' aes b c' f' g aes ]
    c [ ees e aes, b, ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ b, aes, e ees ]
    c [ aes g e c' b aes e' ees' c' aes' g' e' c'' e' g' aes' c' ees' e' aes b c' e g aes ]
    c [ ees e aes, b, ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ b, aes, e ees c' aes g e' c' b aes' e' ees' c'' aes' g' e'' c'' e'' g' aes' c'' ees' e' aes' b c' e' g aes ]
    c [ ees e aes, b, ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    d16 [ b, fis, fis ees bes, bes g e' d' b aes' fis' ees' c'' bes' g' e'' d'' e'' g' bes' c'' ees' fis' aes' b d' ]
    d [ g bes bes, ees fis fis, b, ]
    d    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    d16 [ b, fis, fis ees bes, bes g ]
    d [ d' b fis fis' ees' bes bes' g' e'' d'' e'' g' bes' bes ees' fis' fis b d' ]
    d [ g bes bes, ees fis fis, b, ]
    d    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    d16 [ b, fis, fis ]
    d [ bes, bes fis ]
    d [ d' bes aes' fis' d' c'' bes' g' e'' d'' e'' g' bes' c'' d' fis' aes' bes d' ]
    d [ fis bes bes, ]
    d [ fis fis, b, ]
    d    r8
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
    