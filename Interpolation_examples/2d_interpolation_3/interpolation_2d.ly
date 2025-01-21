
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
    
%scale 0_0
    \clef treble
    c16 [ b, bes e ees d' gis g fis' ]
    c' [ b bes' e' ees' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' ees' e' bes' b ]
    c' [ fis' g gis d' ees e bes b, ]
    c    r8
    \bar ""
    \break
        
%scale 0_1
    \mark \markup \bold { "Scale 0_1" }
    \clef treble
    c16 [ cis bes e f bes gis a e' ]
    c' [ b bes' e' f' d'' gis' g' bes'' ]
    c'' [ bes'' g' gis' d'' f' e' bes' b ]
    c' [ e' a gis bes f e bes cis ]
    c    r8
    \bar ""
    \break
        
%scale 0_2
    \mark \markup \bold { "Scale 0_2" }
    \clef treble
    c16 [ cis fis e a bes gis cis' f' ]
    c' [ cis' a' e' f' ees'' gis' a' bes'' ]
    c'' [ bes'' a' gis' ees'' f' e' a' cis' ]
    c' [ f' cis' gis bes a e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 0_3
    \mark \markup \bold { "Scale 0_3" }
    \clef treble
    c16 [ cis fis fis a bes e' cis' b' ]
    c'' [ g' a' ]
    c'' [ a'' ees'' e''' f''' b''' ]
    c'''' [ b''' f''' e''' ees'' a'' ]
    c'' [ a' g' ]
    c'' [ b' cis' e' bes a fis fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 0_4
    \mark \markup \bold { "Scale 0_4" }
    \clef treble
    c16 [ f g aes a cis' e' f' b' ]
    c'' [ g' g'' aes'' a'' g'' e''' f''' b''' ]
    c'''' [ b''' f''' e''' g'' a'' aes'' g'' g' ]
    c'' [ b' f' e' cis' a aes g f ]
    c    r8
    \bar ""
    \break
        
%scale 1_0
    \mark \markup \bold { "Scale 1_0" }
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
        
%scale 1_2
    \mark \markup \bold { "Scale 1_2" }
    \clef treble
    c16 [ cis fis e a bes gis cis' d' ]
    c' [ cis' bes' e' f' ees'' gis' a' d'' ]
    c'' [ d'' a' gis' ees'' f' e' bes' cis' ]
    c' [ d' cis' gis bes f e fis cis ]
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
        
%scale 1_4
    \mark \markup \bold { "Scale 1_4" }
    \clef treble
    c16 [ cis g aes a ees' e' f' b' ]
    c'' [ g' g'' aes'' a'' ees''' e''' f''' b''' ]
    c'''' [ b''' f''' e''' ees''' a'' aes'' g'' g' ]
    c'' [ b' f' e' ees' a aes g cis ]
    c    r8
    \bar ""
    \break
        
%scale 2_0
    \mark \markup \bold { "Scale 2_0" }
    \clef treble
    c16 [ b, d e ees d' gis g fis' ]
    c' [ b bes' e' cis'' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' cis'' e' bes' a' ]
    c' [ fis' g gis d' ees e d b, ]
    c    r8
    \bar ""
    \break
        
%scale 2_1
    \mark \markup \bold { "Scale 2_1" }
    \clef treble
    c16 [ cis bes e f d' gis cis' fis' ]
    c' [ a' bes' e' cis'' d'' gis' g' fis'' ]
    c'' [ fis'' g' gis' d'' cis'' e' bes' a' ]
    c' [ fis' cis' gis d' f e bes cis ]
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
        
%scale 2_3
    \mark \markup \bold { "Scale 2_3" }
    \clef treble
    c16 [ cis fis e a d' gis a b' ]
    c' [ cis'' fis'' e' f' d''' gis' a' b''' ]
    c'' [ b''' a' gis' d''' f' e' fis'' cis'' ]
    c' [ b' a gis d' a e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 2_4
    \mark \markup \bold { "Scale 2_4" }
    \clef treble
    c16 [ cis fis e a ees' gis a b' ]
    c' [ cis'' fis'' e' f' bes' gis' a' b''' ]
    c'' [ b''' a' gis' bes' f' e' fis'' cis'' ]
    c' [ b' a gis ees' a e fis cis ]
    c    r8
    \bar ""
    \break
        
%scale 3_0
    \mark \markup \bold { "Scale 3_0" }
    \clef treble
    c16 [ cis d e cis d' gis g d' ]
    c' [ a' bes' e' cis'' d'' gis' f'' d''' ]
    c'' [ d''' f'' gis' d'' cis'' e' bes' a' ]
    c' [ d' g gis d' cis e d cis ]
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
        
%scale 3_2
    \mark \markup \bold { "Scale 3_2" }
    \clef treble
    c16 [ cis bes e f d' gis f' fis' ]
    c' [ a' bes' e' cis'' d'' gis' f'' fis'' ]
    c'' [ fis'' f'' gis' d'' cis'' e' bes' a' ]
    c' [ fis' f' gis d' f e bes cis ]
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
        
%scale 3_4
    \mark \markup \bold { "Scale 3_4" }
    \clef treble
    c16 [ cis fis e f d' gis a d' ]
    c' [ cis' bes' e' f' d'' gis' a' d'' ]
    c'' [ d'' a' gis' d'' f' e' bes' cis' ]
    c' [ d' a gis d' f e fis cis ]
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
        
%scale 4_1
    \mark \markup \bold { "Scale 4_1" }
    \clef treble
    c16 [ ees d e cis' d' gis e' d' ]
    c' [ a' bes' e' cis'' d''' gis' f'' d''' ]
    c'' [ d''' f'' gis' d'' cis'' e' bes' a' ]
    c' [ d' e' gis d' cis' e bes, ees ]
    c    r8
    \bar ""
    \break
        
%scale 4_2
    \mark \markup \bold { "Scale 4_2" }
    \clef treble
    c16 [ cis bes e b, d' gis f' fis' ]
    c' [ a' bes' e' cis'' d'' gis' f'' fis'' ]
    c'' [ fis'' f'' gis' d'' cis'' e' bes' a' ]
    c' [ fis' f' gis d' cis' e bes cis ]
    c    r8
    \bar ""
    \break
        
%scale 4_3
    \mark \markup \bold { "Scale 4_3" }
    \clef treble
    c16 [ cis bes e f d' gis a fis' ]
    c' [ a' bes' e' cis'' d'' gis' a' fis'' ]
    c'' [ fis'' a' gis' d'' cis'' e' bes' a' ]
    c' [ fis' a gis d' f e bes cis ]
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
    