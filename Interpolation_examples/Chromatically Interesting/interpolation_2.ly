
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
    
%scale 0
    \clef treble
    c16 [ b, bes e ees d' gis g e' ]
    c' [ b bes' e' ees' d'' gis' g' e'' ]
    c'' [ e'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 1
    \mark \markup \bold { "Scale 1" }
    \clef treble
    c16 [ b, bes e ees d' gis g fis' ]
    c' [ b bes' e' ees' d'' gis' g' e'' ]
    c'' [ e'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 2
    \mark \markup \bold { "Scale 2" }
    \clef treble
    c16 [ b, bes e ees d' gis g fis' ]
    c' [ b bes' e' ees' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 3
    \mark \markup \bold { "Scale 3" }
    \clef treble
    c16 [ b, bes e ees d' gis g fis' ]
    c' [ b bes' e' ees' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 4
    \mark \markup \bold { "Scale 4" }
    \clef treble
    c16 [ b, bes e b, d' gis g fis' ]
    c' [ b bes' e' b d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' b e' bes' b ]
    c' [ fis' g gis d' b, e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 5
    \mark \markup \bold { "Scale 5" }
    \clef treble
    c16 [ g, bes e b, d' gis ees fis' ]
    c' [ b bes' e' b d'' gis' ees' fis'' ]
    c'' [ fis'' ees' gis' d'' b e' bes' b ]
    c' [ fis' ees gis d' b, e bes g, ]
    c    r8
    \bar ""
    \break
        
%scale 6
    \mark \markup \bold { "Scale 6" }
    \clef treble
    c16 [ g, bes e b, d' gis ees fis' ]
    c' [ g bes' e' b d'' gis' ees' fis'' ]
    c'' [ fis'' ees' gis' d'' b e' bes' g ]
    c' [ fis' ees gis d' b, e bes g, ]
    c    r8
    \bar ""
    \break
        
%scale 7
    \mark \markup \bold { "Scale 7" }
    \clef treble
    c16 [ g, bes e b, d' gis ees fis' ]
    c' [ g bes' e' b d'' gis' ees' fis'' ]
    c'' [ fis'' ees' gis' d'' b e' bes' g ]
    c' [ fis' ees gis d' b, e bes g, ]
    c    r8
    \bar ""
    \break
        
%scale 8
    \mark \markup \bold { "Scale 8" }
    \clef treble
    c16 [ g, e, e b, gis, gis ees ]
    c c' [ g bes' e' b gis gis' ees' ]
    c' c'' c' [ ees' gis' gis b e' bes' g ]
    c' c [ ees gis d' b, e e, g, ]
    c    r8
    \bar ""
    \break
        
%scale 9
    \mark \markup \bold { "Scale 9" }
    \clef treble
    c16 [ g, e, e b, gis, gis ees ]
    c c' [ g bes' e' b gis gis' ees' ]
    c' c'' c' [ ees' gis' gis b e' bes' g ]
    c' c [ ees gis gis, b, e e, ees ]
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
    