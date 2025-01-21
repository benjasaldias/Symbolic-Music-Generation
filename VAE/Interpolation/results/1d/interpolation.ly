
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
    c16 [ bes, a e d b gis fis f' ]
    c' [ bes b' e' d' b' gis' fis' f'' ]
    c'' [ f'' fis' gis' b' d' e' b' bes ]
    c' [ f' fis gis b d e a bes, ]
    c    r8
    \bar ""
    \break
        
%scale 1
    ^\markup \bold { "step 1" }
    \clef treble
    c16 [ bes, a e d b gis fis f' ]
    c' [ bes b' e' d' b' gis' fis' dis'' ]
    c'' [ dis'' fis' gis' b' d' e' b' bes ]
    c' [ f' fis gis b d e a bes, ]
    c    r8
    \bar ""
    \break
        
%scale 2
    ^\markup \bold { "step 2" }
    \clef treble
    c16 [ bes, f e d b gis fis f' ]
    c' [ bes b' e' d' b' gis' fis' dis'' ]
    c'' [ dis'' fis' gis' b' d' e' b' bes ]
    c' [ f' fis gis b d e f bes, ]
    c    r8
    \bar ""
    \break
        
%scale 3
    ^\markup \bold { "step 3" }
    \clef treble
    c16 [ bes, f e d b gis fis f' ]
    c' [ bes b' e' d' a' gis' fis' dis'' ]
    c'' [ dis'' fis' gis' a' d' e' b' bes ]
    c' [ f' fis gis b d e f bes, ]
    c    r8
    \bar ""
    \break
        
%scale 4
    ^\markup \bold { "step 4" }
    \clef treble
    c16 [ g f e d a gis fis f' ]
    c' [ bes f' e' d' a' gis' fis' cis' ]
    c'' [ cis' fis' gis' a' d' e' f' bes ]
    c' [ f' fis gis a d e f g ]
    c    r8
    \bar ""
    \break
        
%scale 5
    ^\markup \bold { "step 5" }
    \clef treble
    c16 [ g f e d a gis fis cis' ]
    c' [ g' f' e' b' a' gis' fis' cis'' ]
    c'' [ cis'' fis' gis' a' b' e' f' g' ]
    c' [ cis' fis gis a d e f g ]
    c    r8
    \bar ""
    \break
        
%scale 6
    ^\markup \bold { "step 6" }
    \clef treble
    c16 [ gis f e gis a gis b cis' ]
    c' [ gis' f' e' b' a' gis' gis'' cis'' ]
    c'' [ cis'' gis'' gis' a' b' e' f' gis' ]
    c' [ e' b gis a gis e f aes, ]
    c    r8
    \bar ""
    \break
        
%scale 7
    ^\markup \bold { "step 7" }
    \clef treble
    c16 [ aes, f e gis a ]
    c' [ b e' ]
    c' [ gis' f' ]
    c'' [ b' a' gis' gis'' cis'' ]
    c''' [ cis'' gis'' gis' a' b' ]
    c'' [ f' gis' ]
    c' [ e' b ]
    c' [ a gis e f aes, ]
    c    r8
    \bar ""
    \break
        
%scale 8
    ^\markup \bold { "step 8" }
    \clef treble
    c16 [ aes, e fis gis a ]
    c' [ b e' fis' gis' f' ]
    c'' [ b' e'' fis'' gis'' des'' ]
    c''' [ des'' gis'' fis'' e'' b' ]
    c'' [ f' gis' fis' e' b ]
    c' [ a gis fis e aes, ]
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
    