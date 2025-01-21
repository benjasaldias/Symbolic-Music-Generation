
    \version "2.22.2"
    \header {
    title = "Interpolation"
    composer = "Symbolic Music Generation"
    }

    \score {
    <<
        \cadenzaOn
        \override Beam.breakable = ##t

    {
    
%scale 0_4
    \clef treble
    c16 [ f g aes a cis' e' f' b' ]
    c'' [ g' g'' aes'' a'' g'' e''' f''' b''' ]
    c'''' [ b''' f''' e''' g'' a'' aes'' g'' g' ]
    c'' [ b' f' e' cis' a aes g f ]
    c    r8
    \bar ""
    \break
        
%scale 1_3
    \mark \markup \bold { "Scale 1_3" }
    \clef treble
    c16 [ cis fis e a bes e' cis' b' ]
    c'' [ cis'' fis'' e' a'' ees'' e''' f''' b''' ]
    c'''' [ b''' f''' e''' ees'' a'' e' fis'' g' ]
    c'' [ b' cis' e' bes a e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 3_1
    \mark \markup \bold { "Scale 3_1" }
    \clef treble
    c16 [ cis d e cis' d' gis f' fis' ]
    c' [ a' bes' e' cis'' d'' gis' f'' fis'' ]
    c'' [ fis'' f'' gis' d'' cis'' e' bes' a' ]
    c' [ fis' f' gis d' cis' e d cis ]
    c    r8
    \bar ""
    \break
        
%scale 4_0
    \mark \markup \bold { "Scale 4_0" }
    \clef treble
    c16 [ ees bes, fis b' d' ]
    c' [ e' d' fis' bes' bes' ]
    c'' [ cis'' d''' fis'' g''' d''' ]
    c''' [ d''' g''' fis'' d''' cis'' ]
    c'' [ bes' bes' fis' bes' e' ]
    c' [ d' b' fis bes, ees ]
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
    