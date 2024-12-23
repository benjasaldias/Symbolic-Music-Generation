
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
    c16 [ b, d e f g gis b cis' ]
    c' [ f' aes' e' b' g' gis' ees'' aes'' ]
    c'' [ aes'' ees'' gis' g' b' e' aes' f' ]
    c' [ cis' b gis g f e d b, ]
    c    r8
    \bar ""
    \break
        
%scale 1
    \mark \markup \bold { "Scale [0, 1]" }
    \clef treble
    c16 [ b, dis e f g gis b cis' ]
    c' [ ees' aes' e' ees' g' gis' ees'' b' ]
    c'' [ b' ees'' gis' g' ees' e' aes' ees' ]
    c' [ cis' b gis g f e dis b, ]
    c    r8
    \bar ""
    \break
        
%scale 2
    \mark \markup \bold { "Scale [0, 2]" }
    \clef treble
    c16 [ b, dis e f g gis b b ]
    c' [ ees' dis' e' ees' g' gis' b' b' ]
    c'' [ b' b' gis' g' ees' e' dis' ees' ]
    c' [ b b gis g f e dis b, ]
    c    r8
    \bar ""
    \break
        
%scale 3
    \mark \markup \bold { "Scale [0, 3]" }
    \clef treble
    c16 [ ees dis e f g gis b b ]
    c' [ ees' dis' e' g' g' gis' b' b' ]
    c'' [ b' b' gis' g' g' e' dis' ees' ]
    c' [ b b gis g f e dis ees ]
    c    r8
    \bar ""
    \break
        
%scale 4
    \mark \markup \bold { "Scale [0, 4]" }
    \clef treble
    c16 [ ees dis e g g gis b b ]
    c' [ ees' dis' e' g' g' gis' b' b' ]
    c'' [ b' b' gis' g' g' e' dis' ees' ]
    c' [ b b gis g g e dis ees ]
    c    r8
    \bar ""
    \break
        
%scale 5
    \mark \markup \bold { "Scale [1, 0]" }
    \clef treble
    c16 [ ees dis e g g gis b b ]
    c' [ ees' g' e' g' d'' gis' b' b' ]
    c'' [ b' b' gis' d'' g' e' g' ees' ]
    c' [ b b gis g g e dis ees ]
    c    r8
    \bar ""
    \break
        
%scale 6
    \mark \markup \bold { "Scale [1, 1]" }
    \clef treble
    c16 [ ees bes e g g gis b fis' ]
    c' [ ees' g' e' g' d'' gis' b' fis'' ]
    c'' [ fis'' b' gis' d'' g' e' g' ees' ]
    c' [ fis' b gis g g e bes ees ]
    c    r8
    \bar ""
    \break
        
%scale 7
    \mark \markup \bold { "Scale [1, 2]" }
    \clef treble
    c16 [ ees g e g b gis b fis' ]
    c' [ ees' g' e' g' d'' gis' b' fis'' ]
    c'' [ fis'' b' gis' d'' g' e' g' ees' ]
    c' [ fis' b gis b g e g ees ]
    c    r8
    \bar ""
    \break
        
%scale 8
    \mark \markup \bold { "Scale [1, 3]" }
    \clef treble
    c16 [ d g e fis b gis bes fis' ]
    c' [ d' g' e' fis' b' gis' bes' fis'' ]
    c'' [ fis'' bes' gis' b' fis' e' g' d' ]
    c' [ fis' bes gis b fis e g d ]
    c    r8
    \bar ""
    \break
        
%scale 9
    \mark \markup \bold { "Scale [1, 4]" }
    \clef treble
    c16 [ d g e fis b gis bes ees' ]
    c' [ d' g' e' fis' b' gis' bes' fis'' ]
    c'' [ fis'' bes' gis' b' fis' e' g' d' ]
    c' [ ees' bes gis b fis e g d ]
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
    