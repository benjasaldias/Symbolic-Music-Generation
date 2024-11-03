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

% 86. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, b, fis ees f]
  
  \clef treble
               c'[ a b fis' ees' f']
               c''[ a' b' fis'' ees'' f'']
               c'''[ f'' ees'' fis'' b' a']
               c''[ f' ees' fis' b a]
  \clef bass
               c'[ f ees fis b, a,]
               c1
 }
>>

% 87. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis, b, fis d f]
  
  \clef treble
               c'[ gis b fis' d' f']
               c''[ gis' b' fis'' d'' f'']
               c'''[ f'' d'' fis'' b' gis']
               c''[ f' d' fis' b gis]
  \clef bass
               c'[ f d fis b, gis,]
               c1
 }
>>

% 88. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, b, fis des f]
  
  \clef treble
               c'[ g b fis' des' f']
               c''[ g' b' fis'' des'' f'']
               c'''[ f'' des'' fis'' b' g']
               c''[ f' des' fis' b g]
  \clef bass
               c'[ f des fis b, g,]
               c1
 }
>>

% 89. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, bes, fis dis e]
  
  \clef treble
               c'[ a bes fis' dis' e']
               c''[ a' bes' fis'' dis'' e'']
               c'''[ e'' dis'' fis'' bes' a']
               c''[ e' dis' fis' bes a]
  \clef bass
               c'[ e dis fis bes, a,]
               c1
 }
>>

% 90. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, bes, fis d e]
  
  \clef treble
               c'[ aes bes fis' d' e']
               c''[ aes' bes' fis'' d'' e'']
               c'''[ e'' d'' fis'' bes' aes']
               c''[ e' d' fis' bes aes]
  \clef bass
               c'[ e d fis bes, aes,]
               c1
 }
>>

% 91. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, bes, fis cis e]
  
  \clef treble
               c'[ g bes fis' cis' e']
               c''[ g' bes' fis'' cis'' e'']
               c'''[ e'' cis'' fis'' bes' g']
               c''[ e' cis' fis' bes g]
  \clef bass
               c'[ e cis fis bes, g,]
               c1
 }
>>

% 92. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis, a, fis d ees]
  
  \clef treble
               c'[ gis a fis' d' ees']
               c''[ gis' a' fis'' d'' ees'']
               c'''[ ees'' d'' fis'' a' gis']
               c''[ ees' d' fis' a gis]
  \clef bass
               c'[ ees d fis a, gis,]
               c1
 }
>>

% 93. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, a, fis cis dis]
  
  \clef treble
               c'[ g a fis' cis' dis']
               c''[ g' a' fis'' cis'' dis'']
               c'''[ dis'' cis'' fis'' a' g']
               c''[ dis' cis' fis' a g]
  \clef bass
               c'[ dis cis fis a, g,]
               c1
 }
>>

%%% INFRAPOLATION OF THREE NOTES %%%

% --- falta --- %

%%% INFRA-INTERPOLATION %%%

% 99. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d fis f aes]
  
  \clef treble
               c'[ b d' fis' f' aes']
               c''[ b' d'' fis'' f'' aes'']
               c'''[ aes'' f'' fis'' d'' b']
               c''[ aes' f' fis' d' b]
  \clef bass
               c'[ aes f fis d b,]
               c1
 }
>>

% 100. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis fis f a]
  
  \clef treble
               c'[ b dis' fis' f' a']
               c''[ b' dis'' fis'' f'' a'']
               c'''[ a'' f'' fis'' dis'' b']
               c''[ a' f' fis' dis' b]
  \clef bass
               c'[ a f fis dis b,]
               c1
 }
>>

% 101. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ais, cis fis e g]
  
  \clef treble
               c'[ ais cis' fis' e' g']
               c''[ ais' cis'' fis'' e'' g'']
               c'''[ g'' e'' fis'' cis'' ais']
               c''[ g' e' fis' cis' ais]
  \clef bass
               c'[ g e fis cis ais,]
               c1
 }
>>

% 102. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, d fis e gis]
  
  \clef treble
               c'[ bes d' fis' e' gis']
               c''[ bes' d'' fis'' e'' gis'']
               c'''[ gis'' e'' fis'' d'' bes']
               c''[ gis' e' fis' d' bes]
  \clef bass
               c'[ gis e fis d bes,]
               c1
 }
>>

% 103. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ais, dis fis e a]
  
  \clef treble
               c'[ ais dis' fis' e' a']
               c''[ ais' dis'' fis'' e'' a'']
               c'''[ g'' e'' fis'' dis'' ais']
               c''[ a' e' fis' dis' ais]
  \clef bass
               c'[ a e fis dis ais,]
               c1
 }
>>

% 104. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, cis fis ees g]
  
  \clef treble
               c'[ a cis' fis' ees' g']
               c''[ a' cis'' fis'' ees'' g'']
               c'''[ g'' ees'' fis'' cis'' a']
               c''[ g' ees' fis' cis' a]
  \clef bass
               c'[ g ees fis cis a,]
               c1
 }
>>

% 105. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, d fis ees aes]
  
  \clef treble
               c'[ a d' fis' ees' aes']
               c''[ a' d'' fis'' ees'' aes'']
               c'''[ aes'' ees'' fis'' d'' a']
               c''[ aes' ees' fis' d' a]
  \clef bass
               c'[ aes ees fis d a,]
               c1
 }
>>

% 106. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, e fis ees bes]
  
  \clef treble
               c'[ a e' fis' ees' bes']
               c''[ a' e'' fis'' ees'' bes'']
               c'''[ bes'' ees'' fis'' e'' a']
               c''[ bes' ees' fis' e' a]
  \clef bass
               c'[ bes ees fis e a,]
               c1
 }
>>

% 107. TRITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, ees fis cis a]
  
  \clef treble
               c'[ g ees' fis' cis' a']
               c''[ g' ees'' fis'' cis'' a'']
               c'''[ a'' cis'' fis'' ees'' g']
               c''[ a' cis' fis' ees' g]
  \clef bass
               c'[ a cis fis ees g,]
               c1
 }
>>

%%% INFRA-ULTRAPOLATION %%%

% 108. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, g fis f des']
  
  \clef treble
               c'[ b g' fis' f' des'']
               c''[ b' g'' fis'' f'' des''']
               c'''[ des''' f'' fis'' g'' b']
               c''[ des'' f' fis' g' b]
  \clef bass
               c'[ des' f fis g b,]
               c1
 }
>>

% 109. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, gis fis f d']
  
  \clef treble
               c'[ b gis' fis' f' d'']
               c''[ b' gis'' fis'' f'' d''']
               c'''[ d''' f'' fis'' gis'' b']
               c''[ d'' f' fis' gis' b]
  \clef bass
               c'[ d' f fis gis b,]
               c1
 }
>>

% 110. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, a fis f ees']
  
  \clef treble
               c'[ b a' fis' f' ees'']
               c''[ b' a'' fis'' f'' ees''']
               c'''[ ees''' f'' fis'' a'' b']
               c''[ ees'' f' fis' a' b]
  \clef bass
               c'[ ees' f fis a b,]
               c1
 }
>>

% 111. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, ais fis f e']
  
  \clef treble
               c'[ b ais' fis' f' e'']
               c''[ b' ais'' fis'' f'' e''']
               c'''[ e''' f'' fis'' ais'' b']
               c''[ e'' f' fis' ais' b]
  \clef bass
               c'[ e' f fis ais b,]
               c1
 }
>>

% 112. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, g fis e des']
  
  \clef treble
               c'[ bes g' fis' e' des'']
               c''[ bes' g'' fis'' e'' des''']
               c'''[ des''' e'' fis'' g'' bes']
               c''[ des'' e' fis' g' bes]
  \clef bass
               c'[ des' e fis g bes,]
               c1
 }
>>

% 113. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, gis fis e d']
  
  \clef treble
               c'[ bes gis' fis' e' d'']
               c''[ bes' gis'' fis'' e'' d''']
               c'''[ d''' e'' fis'' gis'' bes']
               c''[ d'' e' fis' gis' bes]
  \clef bass
               c'[ d' e fis gis bes,]
               c1
 }
>>

% 114. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, a fis e ees']
  
  \clef treble
               c'[ bes a' fis' e' ees'']
               c''[ bes' a'' fis'' e'' ees''']
               c'''[ ees''' e'' fis'' a'' bes']
               c''[ ees'' e' fis' a' bes]
  \clef bass
               c'[ ees' e fis a bes,]
               c1
 }
>>

% 115. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, g fis ees des']
  
  \clef treble
               c'[ a g' fis' ees' des'']
               c''[ a' g'' fis'' ees'' des''']
               c'''[ des''' ees'' fis'' g'' a']
               c''[ des'' ees' fis' g' a]
  \clef bass
               c'[ des' ees fis g a,]
               c1
 }
>>

% 116. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, gis fis ees d']
  
  \clef treble
               c'[ a gis' fis' ees' d'']
               c''[ a' gis'' fis'' ees'' d''']
               c'''[ d''' ees'' fis'' gis'' a']
               c''[ d'' ees' fis' gis' a]
  \clef bass
               c'[ d' ees fis gis a,]
               c1
 }
>>

% 117. TRITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, g fis d des']
  
  \clef treble
               c'[ aes g' fis' d' des'']
               c''[ aes' g'' fis'' d'' des''']
               c'''[ des''' d'' fis'' g'' aes']
               c''[ des'' d' fis' g' aes]
  \clef bass
               c'[ des' d fis g aes,]
               c1
 }
>>

%%% INTER-ULTRAPOLATION %%%

% 118. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des g fis g des']
  
  \clef treble
               c'[ des' g' fis' g' des'']
               c''[ des'' g'' fis'' g'' des''']
               c'''[ des''' g'' fis'' g'' des'']
               c''[ des'' g' fis' g' des']
  \clef bass
               c'[ des' g fis g des]
               c1
 }
>>

% 119. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des aes fis g d']
  
  \clef treble
               c'[ des' aes' fis' g' d'']
               c''[ des'' aes'' fis'' g'' d''']
               c'''[ d''' g'' fis'' aes'' des'']
               c''[ d'' g' fis' aes' des']
  \clef bass
               c'[ d' g fis aes des]
               c1
 }
>>

% 120. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis a fis g ees']
  
  \clef treble
               c'[ cis' a' fis' g' ees'']
               c''[ cis'' a'' fis'' g'' ees''']
               c'''[ ees''' g'' fis'' a'' cis'']
               c''[ ees'' g' fis' a' cis']
  \clef bass
               c'[ ees' g fis a cis]
               c1
 }
>>

% 121. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis ais fis g e']
  
  \clef treble
               c'[ cis' ais' fis' g' e'']
               c''[ cis'' ais'' fis'' g'' e''']
               c'''[ e''' g'' fis'' ais'' cis'']
               c''[ e'' g' fis' ais' cis']
  \clef bass
               c'[ e' g fis ais cis]
               c1
 }
>>

% 122. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis b fis g f']
  
  \clef treble
               c'[ cis' b' fis' g' f'']
               c''[ cis'' b'' fis'' g'' f''']
               c'''[ f''' g'' fis'' b'' cis'']
               c''[ f'' g' fis' b' cis']
  \clef bass
               c'[ f' g fis b cis]
               c1
 }
>>

% 123. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d g fis gis cis']
  
  \clef treble
               c'[ d' g' fis' gis' cis'']
               c''[ d'' g'' fis'' gis'' cis''']
               c'''[ cis''' gis'' fis'' g'' d'']
               c''[ cis'' gis' fis' g' d']
  \clef bass
               c'[ cis' gis fis g d]
               c1
 }
>>

% 124. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d a fis gis dis']
  
  \clef treble
               c'[ d' a' fis' gis' dis'']
               c''[ d'' a'' fis'' gis'' dis''']
               c'''[ dis''' gis'' fis'' a'' d'']
               c''[ dis'' gis' fis' a' d']
  \clef bass
               c'[ dis' gis fis a d]
               c1
 }
>>

% 125. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d bes fis gis e']
  
  \clef treble
               c'[ d' bes' fis' gis' e'']
               c''[ d'' bes'' fis'' gis'' e''']
               c'''[ e''' gis'' fis'' bes'' d'']
               c''[ e'' gis' fis' bes' d']
  \clef bass
               c'[ e' gis fis bes d]
               c1
 }
>>

% 126. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d b fis gis f']
  
  \clef treble
               c'[ d' b' fis' gis' f'']
               c''[ d'' b'' fis'' gis'' f''']
               c'''[ f''' gis'' fis'' b'' d'']
               c''[ f'' gis' fis' b' d']
  \clef bass
               c'[ f' gis fis b d]
               c1
 }
>>

% 127. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees g fis a cis']
  
  \clef treble
               c'[ ees' g' fis' a' cis'']
               c''[ ees'' g'' fis'' a'' cis''']
               c'''[ cis''' a'' fis'' g'' ees'']
               c''[ cis'' a' fis' g' ees']
  \clef bass
               c'[ cis' a fis g ees]
               c1
 }
>>

% 128. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees aes fis a d']
  
  \clef treble
               c'[ ees' aes' fis' a' d'']
               c''[ ees'' aes'' fis'' a'' d''']
               c'''[ d''' a'' fis'' aes'' ees'']
               c''[ d'' a' fis' aes' ees']
  \clef bass
               c'[ d' a fis aes ees]
               c1
 }
>>

% 129. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees bes fis a e']
  
  \clef treble
               c'[ ees' bes' fis' a' e'']
               c''[ ees'' bes'' fis'' a'' e''']
               c'''[ e''' a'' fis'' bes'' ees'']
               c''[ e'' a' fis' bes' ees']
  \clef bass
               c'[ e' a fis bes ees]
               c1
 }
>>

% 130. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees b fis a f']
  
  \clef treble
               c'[ ees' b' fis' a' f'']
               c''[ ees'' b'' fis'' a'' f''']
               c'''[ f''' a'' fis'' b'' ees'']
               c''[ f'' a' fis' b' ees']
  \clef bass
               c'[ f' a fis b ees]
               c1
 }
>>

% 131. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e g fis ais cis']
  
  \clef treble
               c'[ e' g' fis' ais' cis'']
               c''[ e'' g'' fis'' ais'' cis''']
               c'''[ cis''' ais'' fis'' g'' e'']
               c''[ cis'' ais' fis' g' e']
  \clef bass
               c'[ cis' ais fis g e]
               c1
 }
>>

% 132. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e gis fis bes d']
  
  \clef treble
               c'[ e' gis' fis' bes' d'']
               c''[ e'' gis'' fis'' bes'' d''']
               c'''[ d''' bes'' fis'' gis'' e'']
               c''[ d'' bes' fis' gis' e']
  \clef bass
               c'[ d' bes fis gis e]
               c1
 }
>>

% 133. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e a fis ais dis']
  
  \clef treble
               c'[ e' a' fis' ais' dis'']
               c''[ e'' a'' fis'' ais'' dis''']
               c'''[ dis''' ais'' fis'' a'' e'']
               c''[ dis'' ais' fis' a' e']
  \clef bass
               c'[ dis' ais fis a e]
               c1
 }
>>

% 134. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e bes fis ais e']
  
  \clef treble
               c'[ e' bes' fis' ais' e'']
               c''[ e'' bes'' fis'' ais'' e''']
               c'''[ e''' ais'' fis'' bes'' e'']
               c''[ e'' ais' fis' bes' e']
  \clef bass
               c'[ e' ais fis bes e]
               c1
 }
>>

% 135. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e b fis ais f']
  
  \clef treble
               c'[ e' b' fis' ais' f'']
               c''[ e'' b'' fis'' ais'' f''']
               c'''[ f''' ais'' fis'' b'' e'']
               c''[ f'' ais' fis' b' e']
  \clef bass
               c'[ f' ais fis b e]
               c1
 }
>>

% 136. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f g fis b cis']
  
  \clef treble
               c'[ f' g' fis' b' cis'']
               c''[ f'' g'' fis'' b'' cis''']
               c'''[ cis''' b'' fis'' g'' f'']
               c''[ cis'' b' fis' g' f']
  \clef bass
               c'[ cis' b fis g f]
               c1
 }
>>

% 137. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f aes fis b d']
  
  \clef treble
               c'[ f' aes' fis' b' d'']
               c''[ f'' aes'' fis'' b'' d''']
               c'''[ d''' b'' fis'' aes'' f'']
               c''[ d'' b' fis' aes' f']
  \clef bass
               c'[ d' b fis aes f]
               c1
 }
>>

% 138. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f a fis b dis']
  
  \clef treble
               c'[ f' a' fis' b' dis'']
               c''[ f'' a'' fis'' b'' dis''']
               c'''[ dis''' b'' fis'' a'' f'']
               c''[ dis'' b' fis' a' f']
  \clef bass
               c'[ dis' b fis a f]
               c1
 }
>>

% 139. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f bes fis b e']
  
  \clef treble
               c'[ f' bes' fis' b' e'']
               c''[ f'' bes'' fis'' b'' e''']
               c'''[ e''' b'' fis'' bes'' f'']
               c''[ e'' b' fis' bes' f']
  \clef bass
               c'[ e' b fis bes f]
               c1
 }
>>

% 140. TRITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f b fis b f']
  
  \clef treble
               c'[ f' b' fis' b' f'']
               c''[ f'' b'' fis'' b'' f''']
               c'''[ f''' b'' fis'' b'' f'']
               c''[ f'' b' fis' b' f']
  \clef bass
               c'[ f' b fis b f]
               c1
 }
>>

%%% INFRA.INTER-ULTRAPOLATION %%%

% --- falta --- %



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% DITONE PROGRESSION %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% INTERPOLATION OF ONE NOTE %%%

% 181. DITONE: INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des e f gis a]
  
  \clef treble
               c'[ des' e' f' gis' a']
               c''[ des'' e'' f'' gis'' a'']
               c'''[ a'' gis'' f'' e'' des'']
               c''[ a' gis' f' e' des']
  \clef bass
               c'[ a gis f e des]
               c1
 }
>>

% 182. DITONE: INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ dis e g gis b]
  
  \clef treble
               c'[ dis' e' g' gis' b']
               c''[ dis'' e'' g'' gis'' b'']
               c'''[ b'' gis'' g'' e'' dis'']
               c''[ b' gis' g' e' dis']
  \clef bass
               c'[ b gis g e dis]
               c1
 }
>>


%%% INTERPOLATION OF TWO NOTES %%%

% 183. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis d e f fis gis a bes]
  
  \clef treble
               c'[ cis' d' e' f' fis' gis' a' bes']
               c''[ bes' a' gis' fis' f' e' d' cis']
  \clef bass
               c'[ bes a gis fis f e d cis]
               c1
 }
>>

% 184. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis dis e f g gis a b]
  
  \clef treble
               c'[ cis' dis' e' f' g' gis' a' b']
               c''[ b' a' gis' g' f' e' dis' cis']
  \clef bass
               c'[ b a gis g f e dis cis]
               c1
 }
>>

% 185. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d dis e fis g gis ais b]
  
  \clef treble
               c'[ d' dis' e' fis' g' gis' ais' b']
               c''[ b' ais' gis' g' fis' e' dis' d']
  \clef bass
               c'[ b ais gis g fis e dis d]
               c1
 }
>>

%%% ULTRAPOLATION OF ONE NOTE %%%

% 186. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f e a gis des']
  
  \clef treble
               c'[ f' e' a' gis' des'']
               c''[ f'' e'' a'' gis'' des''']
               c'''[ des''' gis'' a'' e'' f'']
               c''[ des'' gis' a' e' f']
  \clef bass         
               c'[ des' gis a e f]
               c1
 }
>>

% 187. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis e bes gis d']
  
  \clef treble
               c'[ fis' e' bes' gis' d'']
               c''[ fis'' e'' bes'' gis'' d''']
               c'''[ d''' gis'' bes'' e'' fis'']
               c''[ d'' gis' bes' e' fis']
  \clef bass         
               c'[ d' gis bes e fis]
               c1
 }
>>

% 188. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f e b gis ees']
  
  \clef treble
               c'[ f' e' b' gis' ees'']
               c''[ f'' e'' b'' gis'' ees''']
               c'''[ ees''' gis'' b'' e'' f'']
               c''[ ees'' gis' b' e' f']
  \clef bass         
               c'[ ees' gis b e f]
               c1
 }
>>

% 189. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis e c' gis e']
  
  \clef treble
               c'[ gis' e' c'' gis' e'']
               c''[ gis'' e'' c''' gis'' e''']
               c'''[ e''' gis'' c''' e'' gis'']
               c''[ e'' gis' c'' e' gis']
  \clef bass         
               c'[ e' gis c' e gis]
               c1
 }
>>

% 190. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a e des' gis f']
  
  \clef treble
               c'[ a' e' des'' gis' f'']
               c''[ a'' e'' des''' gis'' f''']
               c'''[ f''' gis'' des''' e'' a'']
               c''[ f'' gis' des'' e' a']
  \clef bass         
               c'[ f' gis des' e a]
               c1
 }
>>

% 191. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes e d' gis fis']
  
  \clef treble
               c'[ bes' e' d'' gis' fis'']
               c''[ bes'' e'' d''' gis'' fis''']
               c'''[ fis''' gis'' d''' e'' bes'']
               c''[ fis'' gis' d'' e' bes']
  \clef bass         
               c'[ fis' gis d' e bes]
               c1
 }
>>

% 192. DITONE: ULTRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b e dis' gis g']
  
  \clef treble
               c'[ b' e' dis'' gis' g'']
               c''[ b'' e'' dis''' gis'' g''']
               c'''[ g''' gis'' dis''' e'' b'']
               c''[ g'' gis' dis'' e' b']
  \clef bass         
               c'[ g' gis dis' e b]
               c1
 }
>>

%%% ULTRAPOLATION OF TWO NOTES %%%

% 193. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f fis e a bes gis cis' d']
  
  \clef treble
               c'[ f' fis' e' a' bes' gis' cis'' d'']
               c''[ d'' cis'' gis' bes' a' e' fis' f']
  \clef bass  
               c'[ d' cis' gis bes a e fis f]
               c1
       

 }
>>

% 194. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f g e a b gis des' ees']
  
  \clef treble
               c'[ f' g' e' a' b' gis' des'' ees'']
               c''[ ees'' des'' gis' b' a' e' g' f']
  \clef bass  
               c'[ ees' des' gis b a e g f]
               c1
       

 }
>>

% 195. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f aes e a c' gis cis' e']
  
  \clef treble
               c'[ f' aes' e' a' c'' gis' cis'' e'']
               c''[ e'' cis'' gis' c'' a' e' aes' f']
  \clef bass  
               c'[ e' cis' gis c' a e aes f]
               c1
       

 }
>>

% 196. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f a e a cis' gis des' f']
  
  \clef treble
               c'[ f' a' e' a' cis'' gis' des'' f'']
               c''[ f'' des'' gis' cis'' a' e' a' f']
  \clef bass  
               c'[ f' des' gis cis' a e a f]
               c1
       

 }
>>

% 197. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f bes e a d' gis des' ges']
  
  \clef treble
               c'[ f' bes' e' a' d'' gis' des'' ges'']
               c''[ ges'' des'' gis' d'' a' e' bes' f']
  \clef bass  
               c'[ ges' des' gis d' a e bes f]
               c1
       

 }
>>

% 198. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f b e a ees' gis des' g']
  
  \clef treble
               c'[ f' b' e' a' ees'' gis' des'' g'']
               c''[ g'' des'' gis' ees'' a' e' b' f']
  \clef bass  
               c'[ g' des' gis ees' a e b f]
               c1
       

 }
>>

% 199. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis g e ais b gis d' ees']
  
  \clef treble
               c'[ fis' g' e' ais' b' gis' d'' ees'']
               c''[ ees'' d'' gis' b' ais' e' g' fis']
  \clef bass  
               c'[ ees' d' gis b ais e g fis]
               c1
       

 }
>>

% 200. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ges aes e bes c' gis d' e']
  
  \clef treble
               c'[ ges' aes' e' bes' c'' gis' d'' e'']
               c''[ e'' d'' gis' c'' bes' e' aes' ges']
  \clef bass  
               c'[ e' d' gis c' bes e aes ges]
               c1
       

 }
>>

% 201. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis a e bes des' gis d' f']
  
  \clef treble
               c'[ fis' a' e' bes' des'' gis' d'' f'']
               c''[ f'' d'' gis' des'' bes' e' a' fis']
  \clef bass  
               c'[ f' d' gis des' bes e a fis]
               c1
       

 }
>>

% 202. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis bes e bes d' gis d' fis']
  
  \clef treble
               c'[ fis' bes' e' bes' d'' gis' d'' fis'']
               c''[ fis'' d'' gis' d'' bes' e' bes' fis']
  \clef bass  
               c'[ fis' d' gis d' bes e bes fis]
               c1
       

 }
>>

% 203. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis b e bes ees' gis d' g']
  
  \clef treble
               c'[ fis' b' e' bes' ees'' gis' d'' g'']
               c''[ g'' d'' gis' ees'' bes' e' b' fis']
  \clef bass  
               c'[ g' d' gis ees' bes e b fis]
               c1
       

 }
>>

% 204. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g gis e b c' gis dis' e']
  
  \clef treble
               c'[ g' gis' e' b' c'' gis' dis'' e'']
               c''[ e'' dis'' gis' c'' b' e' gis' g']
  \clef bass  
               c'[ e' dis' gis c' b e gis g]
               c1
       

 }
>>

% 205. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g a e b cis' gis ees' f']
  
  \clef treble
               c'[ g' a' e' b' cis'' gis' ees'' f'']
               c''[ f'' ees'' gis' cis'' b' e' a' g']
  \clef bass  
               c'[ f' ees' gis cis' b e a g]
               c1
       

 }
>>

% 206. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g bes e b d' gis ees' ges']
  
  \clef treble
               c'[ g' bes' e' b' d'' gis' ees'' ges'']
               c''[ ges'' ees'' gis' d'' b' e' bes' g']
  \clef bass  
               c'[ ges' ees' gis d' b e bes g]
               c1
       

 }
>>

% 207. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g b e b dis' gis ees' g']
  
  \clef treble
               c'[ g' b' e' b' dis'' gis' ees'' g'']
               c''[ g'' ees'' gis' dis'' b' e' b' g']
  \clef bass  
               c'[ g' ees' gis dis' b e b g]
               c1
       

 }
>>

% 208. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis a e c' cis' gis e' f']
  
  \clef treble
               c'[ gis' a' e' c'' cis'' gis' e'' f'']
               c''[ f'' e'' gis' cis'' c'' e' a' gis']
  \clef bass  
               c'[ f' e' gis cis' c' e a gis]
               c1
       

 }
>>

% 209. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes bes e c' d' gis e' fis']
  
  \clef treble
               c'[ aes' bes' e' c'' d'' gis' e'' fis'']
               c''[ fis'' e'' gis' d'' c'' e' bes' aes']
  \clef bass  
               c'[ fis' e' gis d' c' e bes aes]
               c1
       

 }
>>

% 210. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis b e c' ees' gis e' g']
  
  \clef treble
               c'[ gis' b' e' c'' ees'' gis' e'' g'']
               c''[ g'' e'' gis' ees'' c'' e' b' gis']
  \clef bass  
               c'[ g' e' gis ees' c' e b gis]
               c1
       

 }
>>

% 211. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a bes e cis' d' gis f' fis']
  
  \clef treble
               c'[ a' bes' e' cis'' d'' gis' f'' fis'']
               c''[ fis'' f'' gis' d'' cis'' e' bes' a']
  \clef bass  
               c'[ fis' f' gis d' cis' e bes a]
               c1
       

 }
>>

% 212. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a b e cis' dis' gis f' g']
  
  \clef treble
               c'[ a' b' e' cis'' dis'' gis' f'' g'']
               c''[ g'' f'' gis' dis'' cis'' e' b' a']
  \clef bass  
               c'[ g' f' gis dis' cis' e b a]
               c1
       

 }
>>

% 213. DITONE: ULTRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes b e d' ees' gis fis' g']
  
  \clef treble
               c'[ bes' b' e' d'' ees'' gis' fis'' g'']
               c''[ g'' fis'' gis' ees'' d'' e' b' bes']
  \clef bass  
               c'[ g' fis' gis ees' d' e b bes]
               c1
       

 }
>>

%%% ULTRAPOLATION OF THREE NOTES %%%

% --- falta --- %

%%% INFRAPOLATION OF ONE NOTE %%%

% 231. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, e ees gis g]
  
  \clef treble
               c'[ b e' ees' gis' g']
               c''[ b' e'' ees'' gis'' g'']
               c'''[ g'' gis'' ees'' e'' b']
               c''[ g' gis' ees' e' b]
  \clef bass  
               c'[ g gis ees e b,]
               c1
       

 }
>>

% 232. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, e d gis fis]
  
  \clef treble
               c'[ bes e' d' gis' fis']
               c''[ bes' e'' d'' gis'' fis'']
               c'''[ fis'' gis'' d'' e'' bes']
               c''[ fis' gis' d' e' bes]
  \clef bass  
               c'[ fis gis d e bes,]
               c1
       

 }
>>

% 233. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, e cis gis f]
  
  \clef treble
               c'[ a e' cis' gis' f']
               c''[ a' e'' cis'' gis'' f'']
               c'''[ f'' gis'' cis'' e'' a']
               c''[ f' gis' cis' e' a]
  \clef bass  
               c'[ f gis cis e a,]
               c1
       

 }
>>

% 234. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, e b, gis dis]
  
  \clef treble
               c'[ g e' b gis' dis']
               c''[ g' e'' b' gis'' dis'']
               c'''[ dis'' gis'' b' e'' g']
               c''[ dis' gis' b e' g]
  \clef bass  
               c'[ dis gis b, e g,]
               c1
       

 }
>>

% 235. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis, e bes, gis d]
  
  \clef treble
               c'[ fis e' bes gis' d']
               c''[ fis' e'' bes' gis'' d'']
               c'''[ d'' gis'' bes' e'' fis']
               c''[ d' gis' bes e' fis]
  \clef bass  
               c'[ d gis bes, e fis,]
               c1
       

 }
>>

% 236. DITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f, e a, gis des]
  
  \clef treble
               c'[ f e' a gis' des']
               c''[ f' e'' a' gis'' des'']
               c'''[ des'' gis'' a' e'' f']
               c''[ des' gis' a e' f]
  \clef bass  
               c'[ des gis a, e f,]
               c1
       

 }
>>

%%% INFRAPOLATION OF TWO NOTES %%%

% 237. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, bes, e ees d gis g fis]
  
  \clef treble
               c'[ b bes e' ees' d' gis' g' fis']
               c''[ fis' g' gis' d' ees' e' bes b]
               
  \clef bass  
               c'[ fis g gis d ees e bes, b,]
               c1   

 }
>>

% 238. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, a, e dis cis gis g f]
  
  \clef treble
               c'[ b a e' dis' cis' gis' g' f']
               c''[ f' g' gis' cis' dis' e' a b]
               
  \clef bass  
               c'[ f g gis cis dis e a, b,]
               c1   

 }
>>

% 239. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, gis, e ees c gis g e]
  
  \clef treble
               c'[ b gis e' ees' c' gis' g' e']
               c''[ e' g' gis' c' ees' e' gis b]
               
  \clef bass  
               c'[ e g gis c ees e gis, b,]
               c1   

 }
>>

% 240. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, g, e dis b, gis g ees]
  
  \clef treble
               c'[ b g e' dis' b gis' g' ees']
               c''[ ees' g' gis' b dis' e' g b]
               
  \clef bass  
               c'[ ees g gis b, dis e g, b,]
               c1   

 }
>>

% 241. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, fis, e ees bes, gis g ees]
  
  \clef treble
               c'[ b fis e' ees' bes gis' g' ees']
               c''[ ees' g' gis' bes ees' e' fis b]
               
  \clef bass  
               c'[ ees g gis bes, ees e fis, b,]
               c1   

 }
>>

% 242. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f, e ees a, gis g des]
  
  \clef treble
               c'[ b f e' ees' a gis' g' des']
               c''[ des' g' gis' a ees' e' f b]
               
  \clef bass  
               c'[ des g gis a, ees e f, b,]
               c1   

 }
>>

% 243. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, a, e d cis gis ges f]
  
  \clef treble
               c'[ bes a e' d' cis' gis' ges' f']
               c''[ f' ges' gis' cis' d' e' a bes]
               
  \clef bass  
               c'[ f ges gis cis d e a, bes,]
               c1   

 }
>>

% 244. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, g, e d c gis fis e]
  
  \clef treble
               c'[ bes aes e' d' c' gis' fis' e']
               c''[ e' fis' gis' c' d' e' aes bes]
               
  \clef bass  
               c'[ e fis gis c d e aes, bes,]
               c1   

 }
>>

% 245. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, g, e d b, gis fis dis]
  
  \clef treble
               c'[ bes g e' d' b gis' fis' dis']
               c''[ dis' fis' gis' b d' e' g bes]
               
  \clef bass  
               c'[ dis fis gis b, d e g, bes,]
               c1   

 }
>>

% 246. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, fis, e d bes, gis fis d]
  
  \clef treble
               c'[ bes fis e' d' bes gis' fis' d']
               c''[ d' fis' gis' bes d' e' fis bes]
               
  \clef bass  
               c'[ d fis gis bes, d e fis, bes,]
               c1   

 }
>>

% 247. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, f, e d a, gis fis cis]
  
  \clef treble
               c'[ bes f e' d' a gis' fis' cis']
               c''[ cis' fis' gis' a d' e' f bes]
               
  \clef bass  
               c'[ cis fis gis a, d e f, bes,]
               c1   

 }
>>

% 248. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, gis, e des c gis f e]
  
  \clef treble
               c'[ a gis e' des' c' gis' f' e']
               c''[ e' f' gis' c' des' e' gis a]
               
  \clef bass  
               c'[ e f gis c des e gis, a,]
               c1   

 }
>>

% 249. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, g, e cis b, gis f ees]
  
  \clef treble
               c'[ a g e' cis' b gis' f' ees']
               c''[ ees' f' gis' b cis' e' g a]
               
  \clef bass  
               c'[ ees f gis b, cis e g, a,]
               c1   

 }
>>

% 250. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, fis, e cis bes, gis f d]
  
  \clef treble
               c'[ a fis e' cis' bes gis' f' d']
               c''[ d' f' gis' bes cis' e' fis a]
               
  \clef bass  
               c'[ d f gis bes, cis e fis, a,]
               c1   

 }
>>

% 251. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, f, e cis a, gis f des]
  
  \clef treble
               c'[ a f e' cis' a gis' f' des']
               c''[ des' f' gis' a cis' e' f a]
               
  \clef bass  
               c'[ des f gis a, cis e f, a,]
               c1   

 }
>>

% 252. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, e, e cis gis, gis f c]
  
  \clef treble
               c'[ a e e' cis' gis gis' f' c']
               c''[ c' f' gis' gis cis' e' e a]
               
  \clef bass  
               c'[ c f gis gis, cis e e, a,]
               c1   

 }
>>

% 253. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, ees, e c g, gis e b,]
  
  \clef treble
               c'[ aes ees e' c' g gis' e' b]
               c''[ b e' gis' g c' e' ees aes]
               
  \clef bass  
               c'[ b, e gis g, c e ees, aes,]
               c1   

 }
>>

% 254. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, e, e b, gis, gis ees c]
  
  \clef treble
               c'[ aes e e' b gis gis' ees' c']
               c''[ c' ees' gis' gis b e' e aes]
               
  \clef bass  
               c'[ c ees gis gis, b, e e, aes,]
               c1   

 }
>>

% 255. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, ees, e b, g, gis dis b,]
  
  \clef treble
               c'[ g ees e' b g gis' dis' b]
               c''[ b dis' gis' g b e' ees g]
               
  \clef bass  
               c'[ b, dis gis g, b, e ees, g,]
               c1   

 }
>>

% 256. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, d, e b, fis, gis ees bes,]
  
  \clef treble
               c'[ g d e' b fis gis' ees' bes]
               c''[ bes ees' gis' fis b e' d g]
               
  \clef bass  
               c'[ bes, ees gis fis, b, e d, g,]
               c1   

 }
>>

% 257. DITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, des, e b, f, gis dis a,]
  
  \clef treble
               c'[ g des e' b f gis' dis' a]
               c''[ a dis' gis' f b e' des g]
               
  \clef bass  
               c'[ a, dis gis f, b, e des, g,]
               c1   

 }
>>

%%% INFRAPOLATION OF THREE NOTES %%%

% --- falta --- %

%%% INFRA-INTERPOLATION %%%

% 282. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, cis e ees f gis g a]
  
  \clef treble
               c'[ b cis' e' ees' f' gis' g' a']
               c''[ a' g' gis' f' ees' e' cis' b]
               
  \clef bass  
               c'[ a g gis f ees e cis b,]
               c1   

 }
>>

% 283. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d e ees ges gis g bes]
  
  \clef treble
               c'[ b d' e' ees' ges' gis' g' bes']
               c''[ bes' g' gis' ges' ees' e' d' b]
               
  \clef bass  
               c'[ bes g gis ges ees e d b,]
               c1   

 }
>>

% 284. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis e ees g gis g b]
  
  \clef treble
               c'[ b dis' e' ees' g' gis' g' b']
               c''[ b' g' gis' g' ees' e' dis' b]
               
  \clef bass  
               c'[ b g gis g ees e dis b,]
               c1   

 }
>>

% 285. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, cis e d f gis fis a]
  
  \clef treble
               c'[ bes cis' e' d' f' gis' fis' a']
               c''[ a' fis' gis' f' d' e' cis' bes]
               
  \clef bass  
               c'[ a fis gis f d e cis bes,]
               c1   

 }
>>

% 286. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, ees e d g gis fis b]
  
  \clef treble
               c'[ bes ees' e' d' g' gis' fis' b']
               c''[ b' fis' gis' g' d' e' ees' bes]
               
  \clef bass  
               c'[ b fis gis g d e ees bes,]
               c1   

 }
>>

% 287. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, cis e des f gis f a]
  
  \clef treble
               c'[ a cis' e' des' f' gis' f' a']
               c''[ a' f' gis' f' des' e' cis' a]
               
  \clef bass  
               c'[ a f gis f des e cis a,]
               c1   

 }
>>

% 288. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, d e cis fis gis f bes]
  
  \clef treble
               c'[ a d' e' cis' fis' gis' f' bes']
               c''[ bes' f' gis' fis' cis' e' d' a]
               
  \clef bass  
               c'[ bes f gis fis cis e d a,]
               c1   

 }
>>

% 289. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, dis e des g gis f b]
  
  \clef treble
               c'[ a dis' e' des' g' gis' f' b']
               c''[ b' f' gis' g' des' e' dis' a]
               
  \clef bass  
               c'[ b f gis g des e dis a,]
               c1   

 }
>>

% 290. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis, cis e c f gis e a]
  
  \clef treble
               c'[ gis cis' e' c' f' gis' e' a']
               c''[ a' e' gis' f' c' e' cis' gis]
               
  \clef bass  
               c'[ a e gis f c e cis gis,]
               c1   

 }
>>

% 291. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis, d e c fis gis e bes]
  
  \clef treble
               c'[ gis d' e' c' fis' gis' e' bes']
               c''[ bes' e' gis' fis' c' e' d' gis]
               
  \clef bass  
               c'[ bes e gis fis c e d gis,]
               c1   

 }
>>

% 292. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, ees e c g gis e b]
  
  \clef treble
               c'[ aes ees' e' c' g' gis' e' b']
               c''[ b' e' gis' g' c' e' ees' aes]
               
  \clef bass  
               c'[ b e gis g c e ees aes,]
               c1   

 }
>>

% 293. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, cis e b, f gis ees a]
  
  \clef treble
               c'[ g cis' e' b f' gis' ees' a']
               c''[ a' ees' gis' f' b e' cis' g]
               
  \clef bass  
               c'[ a ees gis f b, e cis g,]
               c1   

 }
>>

% 294. DITONE: INFRA-INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, d e b, fis gis ees bes]
  
  \clef treble
               c'[ g d' e' b fis' gis' ees' bes']
               c''[ bes' ees' gis' fis' b e' d' g]
               
  \clef bass  
               c'[ bes ees gis fis b, e d g,]
               c1   

 }
>>

%%% INFRA-ULTRAPOLATION %%%

