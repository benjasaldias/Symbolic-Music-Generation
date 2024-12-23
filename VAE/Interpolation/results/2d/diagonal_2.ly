
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
    
%scale 0_4
    \mark \markup \bold { "Scale 0_4" }
    \clef treble
    c16 [ g, f e b, a gis ees a ]
    c' [ g f' e' b a' gis' ees' des'' ]
    c'' [ des'' ees' gis' a' b e' f' g ]
    c' [ a ees gis a b, e f g, ]
    c    r8
    \bar ""
    \break
        
%scale 1_3
    \mark \markup \bold { "Scale 1_3" }
    \clef treble
    c16 [ e g aes ]
    c' [ ees' e' gis' b' ]
    c'' [ e'' g'' aes'' ]
    c''' [ ees''' e''' gis''' b''' ]
    c'''' [ b''' gis''' e''' ees''' ]
    c''' [ aes'' g'' e'' ]
    c'' [ b' gis' e' ees' ]
    c' [ aes g e ]
    c    r8
    \bar ""
    \break
        
%scale 3_1
    \mark \markup \bold { "Scale 3_1" }
    \clef treble
    c16 [ ees g aes b dis' e' fis' b' ]
    c'' [ ees'' g'' aes'' a'' dis''' e''' fis''' b''' ]
    c'''' [ b''' fis''' e''' dis''' a'' aes'' g'' ees'' ]
    c'' [ b' fis' e' dis' b aes g ees ]
    c    r8
    \bar ""
    \break
        
%scale 4_0
    \mark \markup \bold { "Scale 4_0" }
    \clef treble
    c16 [ cis g e ]
    c [ dis' e' f' b' ]
    c'' [ aes g'' e' a'' dis''' e''' e' b''' ]
    c'''' [ b''' e' e''' dis''' a'' e' g'' ees'' ]
    c'' [ b' f' e' dis' ]
    c [ e g cis ]
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
    