% Thesaurus of Scales and Melodic Patterns by Nicolas Slonimsky, 1947.

% Nota: toda partitura está hecha sin ciertos comandos que facilitan la transcripción,
% pues esto dificulta la manipulación de los datos. Tampoco se tienen títulos visibles en PDF,
% éstos se encuentran comentados.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRITONE PROGRESSION %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% SYMMETRIC INTERPOLATION OF TWO NOTES %%%

% 32. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis d fis bes b]
         
  \clef treble
               c'[ cis' d' fis' bes' b']
               c''[ cis'' d'' fis'' bes'' b'']
               c'''[ b'' bes'' fis'' d'' cis'']
               c''[ b' bes' fis' d' cis']

  \clef bass
               c'[ b bes fis d cis]
               c1

  }
>>

% 33. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis dis fis a b]
          
  \clef treble
               c'[ cis' dis' fis' a' b']
               c''[ cis'' dis'' fis'' a'' b'']
               c'''[ b'' a'' fis'' dis'' cis'']
               c''[ b' a' fis' dis' cis']

  \clef bass
               c'[ b a fis dis cis]
               c1
  }
>>

% 34. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis dis fis a b]
               
  \clef treble
               c'[ cis' e' fis' gis' b']
               c''[ cis'' dis'' fis'' a'' b'']
               c'''[ b'' a'' fis'' dis'' cis'']
               c''[ b' a' fis' dis' cis']
               
  \clef bass
               c'[ b a fis dis cis]
               c1
  }
>>

% 35. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d ees fis a bes]
               
  \clef treble
               c'[ d' ees' fis' a' bes']
               c''[ d'' ees'' fis'' a'' bes'']
               c'''[ bes'' a'' fis'' ees'' d'']
               c''[ bes' a' fis' ees' d']
               
  \clef bass
               c'[ bes a fis ees d]
               c1
  }
>>

% 36. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d e fis gis bes]           
  \clef treble
               c'[ d' e' fis' gis' bes']
               c''[ d'' e'' fis'' gis'' bes'']
               c'''[ bes'' gis'' fis'' e'' d'']
               c''[ bes' gis' fis' e' d']  
  \clef bass
               c'[ bes gis fis e d]
               c1
  }
>>

% 37. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d f fis g bes]
               
  \clef treble
               c'[ d' f' fis' g' bes']
               c''[ d'' f'' fis'' g'' bes'']
               c'''[ bes'' g'' fis'' f'' d'']
               c''[ bes' g' fis' f' d']
               
  \clef bass
               c'[ bes g fis f d]
               c1
  }
>>

% 38. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees e fis gis a]
               
  \clef treble
               c'[ ees' e' fis' gis' a']
               c''[ ees'' e'' fis'' gis'' a'']
               c'''[ a'' gis'' fis'' e'' ees'']
               c''[ a' gis' fis' e' ees']
  
  \clef bass
               c'[ a gis fis e ees]
               c1
  }
>>

% 39. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees f fis g a]

  \clef treble
               c'[ ees' f' fis' g' a']
               c''[ ees'' f'' fis'' g'' a'']
               c'''[ a'' g'' fis'' f'' ees'']
               c''[ a' g' fis' f' ees']
               
  \clef bass
               c'[ a g fis f ees]
               c1
  }
>>

% 40. TRITONE: SYMMETRIC INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e f fis g aes]
             
  \clef treble
               c'[ e' f' fis' g' aes']
               c''[ e'' f'' fis'' g'' aes'']
               c'''[ aes'' g'' fis'' f'' e'']
               c''[ aes' g' fis' f' e']
  \clef bass
               c'[ aes g fis f e]
               c1
  }
>>

%%% SYMMETRIC INTERPOLATION OF THREE NOTES %%%

% largo no sirve

%%% NON-SYMMETRIC INTERPOLATION %%%

% 49. TRITONE: NON-SYMMETRIC INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis e fis a bes]

  \clef treble
               c'[ cis' e' fis' a' bes']
               c''[ cis'' e'' fis'' a'' bes'']
               c'''[ bes'' a'' fis'' e'' cis'']
               c''[ bes' a' fis' e' cis']
  \clef bass
               c'[ bes a fis e cis]
               c1
  }
>>

% 50. TRITONE: NON-SYMMETRIC INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d e fis a bes]

  \clef treble
               c'[ d' e' fis' a' bes']
               c''[ d'' e'' fis'' a'' bes'']
               c'''[ bes'' a'' fis'' e'' d'']
               c''[ bes' a' fis' e' d']
  \clef bass
               c'[ bes a fis e d]
               c1
  }
>>

%%% ULTRAPOLATION OF ONE NOTE %%%

% largo no sirve

%%% ULTRAPOLATION OF TWO NOTES %%%

% 59. TRITONE: NON-SYMMETRIC INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes g fis d' des']
  
  \clef treble
               c'16[ aes' g' fis' d'' des'']
               c''[ aes'' g'' fis'' d''' des''']
               c'''[ des''' d''' fis'' g'' aes'']
               c''[ des'' d'' fis' g' aes']
  \clef bass
               c'[ des' d' fis g aes]
               c1
 }
>>

% 60. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a g fis ees' des']
  
  \clef treble
               c'[ a' g' fis' ees'' des'']
               c''[ a'' g'' fis'' ees''' des''']
               c'''[ des''' ees''' fis'' g'' a'']
               c''[ des'' ees'' fis' g' a']
  \clef bass
               c'[ des' ees' fis g a]
               c1
 }
>>

% 61. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes g fis e' des']
  
  \clef treble
               c'[ bes' g' fis' e'' des'']
               c''[ bes'' g'' fis'' e''' des''']
               c'''[ des''' e''' fis'' g'' bes'']
               c''[ des'' e'' fis' g' bes']
  \clef bass
               c'[ des' e' fis g bes]
               c1
 }
>>

% 62. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b g fis f' des']
  
  \clef treble
               c'[ b' g' fis' f'' des'']
               c''[ b'' g'' fis'' f''' des''']
               c'''[ des''' f''' fis'' g'' b'']
               c''[ des'' f'' fis' g' b']
  \clef bass
               c'[ des' f' fis g b]
               c1
 }
>>

% 63. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b g fis f' des']
  
  \clef treble
               c'[ b' g' fis' f'' des'']
               c''[ b'' g'' fis'' f''' des''']
               c'''[ des''' f''' fis'' g'' b'']
               c''[ des'' f'' fis' g' b']
  \clef bass
               c'[ des' f' fis g b]
               c1
 }
>>

% 64. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes aes fis e' d']
  
  \clef treble
               c'[ bes' aes' fis' e'' d'']
               c''[ bes'' aes'' fis'' e''' d''']
               c'''[ d''' e''' fis'' aes'' bes'']
               c''[ d'' e'' fis' aes' bes']
  \clef bass
               c'[ d' e' fis aes bes]
               c1
 }
>>

% 65. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b gis fis f' d']
  
  \clef treble
               c'[ b' gis' fis' f'' d'']
               c''[ b'' gis'' fis'' f''' d''']
               c'''[ d''' f''' fis'' gis'' b'']
               c''[ d'' f'' fis' gis' b']
  \clef bass
               c'[ d' f' fis gis b]
               c1
 }
>>

% 66. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes a fis e' ees']
  
  \clef treble
               c'[ bes' a' fis' e'' ees'']
               c''[ bes'' a'' fis'' e''' ees''']
               c'''[ ees''' e''' fis'' a'' bes'']
               c''[ ees'' e'' fis' a' bes']
  \clef bass
               c'[ ees' e' fis a bes]
               c1
 }
>>

% 67. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b a fis f' ees']
  
  \clef treble
               c'[ b' a' fis' f'' ees'']
               c''[ b'' a'' fis'' f''' ees''']
               c'''[ ees''' f''' fis'' a'' b'']
               c''[ ees'' f'' fis' a' b']
  \clef bass
               c'[ ees' f' fis a b]
               c1
 }
>>

% 68. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b ais fis f' e']
  
  \clef treble
               c'[ b' ais' fis' f'' e'']
               c''[ b'' ais'' fis'' f''' e''']
               c'''[ e''' f''' fis'' ais'' b'']
               c''[ e'' f'' fis' ais' b']
  \clef bass
               c'[ e' f' fis ais b]
               c1
 }
>>

% 69. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' gis fis g' d']
  
  \clef treble
               c'[ cis'' gis' fis' g'' d'']
               c''[ cis''' gis'' fis'' g''' d''']
               c'''[ d''' g''' fis'' gis'' cis''']
               c''[ d'' g'' fis' gis' cis'']
  \clef bass
               c'[ d' g' fis gis cis']
               c1
 }
>>

% 70. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' a fis g' ees']
  
  \clef treble
               c'[ cis'' a' fis' g'' ees'']
               c''[ cis''' a'' fis'' g''' ees''']
               c'''[ ees''' g''' fis'' a'' cis''']
               c''[ ees'' g'' fis' a' cis'']
  \clef bass
               c'[ ees' g' fis a cis']
               c1
 }
>>

% 71. TRITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' ais fis g' e']
  
  \clef treble
               c'[ cis'' ais' fis' g'' e'']
               c''[ cis''' ais'' fis'' g''' e''']
               c'''[ e''' g''' fis'' ais'' cis''']
               c''[ e'' g'' fis' ais' cis'']
  \clef bass
               c'[ e' g' fis ais cis']
               c1
 }
>>

%%% ULTRAPOLATION OF THREE NOTES %%%

% --- falta --- %

%%% INFRAPOLATION OF ONE NOTE %%%

% --- falta --- %

%%% INFRAPOLATION OF TWO NOTES %%%

% 85. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' ais fis g' e']
  
  \clef treble
               c'[ cis'' ais' fis' g'' e'']
               c''[ cis''' ais'' fis'' g''' e''']
               c'''[ e''' g''' fis'' ais'' cis''']
               c''[ e'' g'' fis' ais' cis'']
  \clef bass
               c'[ e' g' fis ais cis']
               c1
 }
>>
