
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
    c16 [ b, bes e ees d' gis g fis' ]
    c' [ b bes' e' ees' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 1_1
    \mark \markup \bold { "Scale 1_1" }
    \clef treble
    c16 [ cis bes e f d' gis g fis' ]
    c' [ b bes' e' cis'' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' cis'' e' bes' b ]
    c' [ fis' g gis d' f e bes cis ]
    c    r8
    \bar ""
    \break
        
%scale 2_2
    \mark \markup \bold { "Scale 2_2" }
    \clef treble
    c16 [ cis fis e f d' gis a fis' ]
    c' [ a' bes' e' cis'' d'' gis' a' fis'' ]
    c'' [ fis'' a' gis' d'' cis'' e' bes' a' ]
    c' [ fis' a gis d' f e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 3_3
    \mark \markup \bold { "Scale 3_3" }
    \clef treble
    c16 [ cis fis e f d' gis a d' ]
    c' [ a' bes' e' f' d'' gis' a' fis'' ]
    c'' [ fis'' a' gis' d'' f' e' bes' a' ]
    c' [ d' a gis d' f e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 4_4
    \mark \markup \bold { "Scale 4_4" }
    \clef treble
    c16 [ cis bes e f d' gis a fis' ]
    c' [ d' bes' e' f' d'' gis' a' fis'' ]
    c'' [ fis'' a' gis' d'' f' e' bes' d' ]
    c' [ fis' a gis d' f e bes cis ]
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
    