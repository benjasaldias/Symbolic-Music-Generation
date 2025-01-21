\version "2.22.2"

\header {
  title = "Thesaurus of Scales and Melodic Patterns"
  composer = "Nicolas Slonimsky"
  tagline = "Transcribed by Benjamín Saldías"
}


% Thesaurus of Scales and Melodic Patterns by Nicolas Slonimsky, 1947.

% Note: All scales are written as raw as possible, avoiding certain commands. Feel free to make the changes you see fit :).

% IMPORTANTE: All missing scales and sections are labeled as '---falta---', we will be adding them in the future.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRITONE PROGRESSION %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 27. TRITONE: SYMMETRIC INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
  \relative c{
               c16[ cis fis b]
  }           
  \clef treble
  \relative c'{
               c![ cis fis b] 
               c![ cis fis b] 
               c![ b fis cis]
               c![ b fis cis]
  }
  \clef bass
  \relative c'{
               c![ b fis cis]
               c1
  }     
  }
>>


% 28. TRITONE: SYMMETRIC INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
  \relative c{
               c16[ d fis bes]
  }           
  \clef treble
  \relative c'{
               c[ d fis bes] 
               c[ d fis bes]
               c[ bes fis d]
               c[ bes fis d]
  }
  \clef bass
  \relative c'{
               c[ bes fis d]
               c1
  }     
  }
>>

% 29. TRITONE: SYMMETRIC INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
  \relative c{
               c16[ ees fis a]
  }           
  \clef treble
  \relative c'{
               c[ ees fis a]
               c[ ees fis a]
               c[ a fis ees]
               c[ a fis ees]
  }
  \clef bass
  \relative c'{
               c[ a fis ees]
               c1
  }     
  }
>>

% 30. TRITONE: SYMMETRIC INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
  \relative c{
               c16[ e fis gis]
  }           
  \clef treble
  \relative c'{
               c[ e fis gis]
               c[ e fis gis]
               c[ gis fis e]
               c[ gis fis e]
  }
  \clef bass
  \relative c'{
               c[ gis fis e]
               c1
  }     
  }
>>

% 31. TRITONE: SYMMETRIC INTERPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
  \relative c{
               c16[ f fis g]
  }           
  \clef treble
  \relative c'{
               c[ f fis g]
               c[ f fis g]
               c[ g fis f]
               c[ g fis f]
  }
  \clef bass
  \relative c'{
               c[ g fis f]
               c1
  }     
  }
>>

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
  \relative c{
               c16[ d e fis gis bes]
  }           
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

% 41. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ cis' d' ees']
               fis'[ a' bes' b']
               c''[ cis'' d'' ees'']
               fis''[ a'' bes'' b'']
               c'''[ b'' bes'' a'']
               fis''[ ees'' d'' cis'']
               c''[ b' bes' a']
               fis'[ ees' d' cis']
               c'1       
  }
>>

% 42. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ cis' d' e']
               fis'[ gis' bes' b']
               c''[ cis'' d'' e'']
               fis''[ gis'' bes'' b'']
               c'''[ b'' bes'' gis'']
               fis''[ e'' d'' cis'']
               c''[ b' bes' gis']
               fis'[ e' d' cis']
               c'1     
  }
>>

% 43. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ cis' d' f']
               fis'[ g' bes' b']
               c''[ cis'' d'' f'']
               fis''[ g'' bes'' b'']
               c'''[ b'' bes'' g'']
               fis''[ f'' d'' cis'']
               c''[ b' bes' g']
               fis'[ e' d' cis']
               c'1     
  }
>>

% 44. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ des' ees' e']
               fis'[ gis' a' b']
               c''[ des'' ees'' e'']
               fis''[ gis'' a'' b'']
               c'''[ b'' a'' gis'']
               fis''[ e'' ees'' des'']
               c''[ b' a' gis']
               fis'[ e' ees' des']
               c'1       
  }
>>

% 45. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ cis' e' f']
               fis'[ g' gis' b']
               c''[ cis'' e'' f'']
               fis''[ g'' gis'' b'']
               c'''[ b'' gis'' g'']
               fis''[ f'' e'' cis'']
               c''[ b' gis' g']
               fis'[ f' e' cis']
               c'1       
  }
>>

% 46. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ d' ees' f']
               fis'[ g' a' bes']
               c''[ d'' ees'' f'']
               fis''[ g'' a'' bes'']
               c'''[ bes'' a'' g'']
               fis''[ f'' ees'' d'']
               c''[ bes' a' g']
               fis'[ f' ees' d']
               c'1       
  }
>>

% 47. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ d' e' f']
               fis'[ g' aes' bes']
               c''[ d'' e'' f'']
               fis''[ g'' aes'' bes'']
               c'''[ bes'' aes'' g'']
               fis''[ f'' e'' d'']
               c''[ bes' aes' g']
               fis'[ f' e' d']
               c'1       
  }
>>

% 48. TRITONE: SYMMETRIC INTERPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ ees' e' f']
               fis'[ g' gis' a']
               c''[ ees'' e'' f'']
               fis''[ g'' gis'' a'']
               c'''[ a'' gis'' g'']
               fis''[ f'' e'' ees'']
               c''[ a' gis' g']
               fis'[ f' e' ees']
               c'1       
  }
>>

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

% 51. TRITONE: NON-SYMMETRIC INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ des' ees' f']
               fis'[ gis' ais' b']
               c''[ des'' ees'' f'']
               fis''[ gis'' ais'' b'']
               c'''[ b'' ais'' gis'']
               fis''[ f'' ees'' des'']
               c''[ b' ais' gis']
               fis'[ f' ees' des']
               c'1
 }
>>

% 52. TRITONE: NON-SYMMETRIC INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
               c'16[ des' ees' e' f']
               fis'[ gis' a' ais' b']
               c''[ des'' ees'' e'' f'']
               fis''[ gis'' a'' ais'' b'']
               c'''[ b'' ais'' a'' gis'']
               fis''[ f'' e'' ees'' des'']
               c''[ b' ais' a' gis']
               fis'[ f' e' ees' des']
               c'1
 }
>>

%%% ULTRAPOLATION OF ONE NOTE %%%


%%% ULTRAPOLATION OF TWO NOTES %%%

% 59. TRITONE: ULTRAPOLATION OF TWO NOTES
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

% 72. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes a g]
  
  \clef treble
               fis[ e' ees' des']
               c'[ bes' a' g']
               fis'[ e'' ees'' des'']
               c''[ des'' ees'' e'']
               fis'[ g' a' bes']
               c'[ des' ees' e']
  \clef bass
               fis[ g a bes]
               c1
 }
>>

% 73. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b a g]
  
  \clef treble
               fis[ f' ees' des']
               c'[ b' a' g']
               fis'[ f'' ees'' des'']
               c''[ des'' ees'' f'']
               fis'[ g' a' b']
               c'[ des' ees' f']
  \clef bass
               fis[ g a b]
               c1
 }
>>

% 74. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b ais g]
  
  \clef treble
               fis[ f' e' des']
               c'[ b' ais' g']
               fis'[ f'' e'' des'']
               c''[ des'' e'' f'']
               fis'[ g' ais' b']
               c'[ des' e' f']
  \clef bass
               fis[ g ais b]
               c1
 }
>>

% 75. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b ais gis]
  
  \clef treble
               fis[ f' e' d']
               c'[ b' ais' gis']
               fis'[ f'' e'' d'']
               c''[ d'' e'' f'']
               fis'[ gis' ais' b']
               c'[ d' e' f']
  \clef bass
               fis[ gis ais b]
               c1
 }
>>

% 76. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' gis g]
  
  \clef treble
               fis[ g' d' cis']
               c'[ cis'' gis' g']
               fis'[ g'' d'' cis'']
               c''[ cis'' d'' g'']
               fis'[ g' gis' cis'']
               c'[ cis' d' g']
  \clef bass
               fis[ g gis cis']
               c1
 }
>>

% 77. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' a g]
  
  \clef treble
               fis[ g' ees' des']
               c'[ cis'' a' g']
               fis'[ g'' ees'' des'']
               c''[ des'' ees'' g'']
               fis'[ g' a' cis'']
               c'[ des' ees' g']
  \clef bass
               fis[ g a cis']
               c1
 }
>>

% 78. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' ais g]
  
  \clef treble
               fis[ g' e' des']
               c'[ cis'' ais' g']
               fis'[ g'' e'' des'']
               c''[ des'' e'' g'']
               fis'[ g' ais' cis'']
               c'[ des' e' g']
  \clef bass
               fis[ g ais cis']
               c1
 }
>>

% 79. TRITONE: ULTRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis' ais gis]
  
  \clef treble
               fis[ g' e' d']
               c'[ cis'' ais' gis']
               fis'[ g'' e'' d'']
               c''[ d'' e'' g'']
               fis'[ gis' ais' cis'']
               c'[ d' e' g']
  \clef bass
               fis[ gis ais cis']
               c1
 }
>>


%%% INFRAPOLATION OF ONE NOTE %%%

% 80. TRITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, fis f]
  
  \clef treble
               c'[ b fis' d']
               c''[ b' fis'' d'']
               c'''[ d'' fis'' b']
               c''[ d' fis' b]
  \clef bass
               c'[ f fis b,]
               c1
 }
>>

% 81. TRITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, fis e]
  
  \clef treble
               c'[ bes fis' e']
               c''[ bes' fis'' e'']
               c'''[ e'' fis'' bes']
               c''[ e' fis' bes]
  \clef bass
               c'[ e fis bes,]
               c1
 }
>>

% 82. TRITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, fis ees]
  
  \clef treble
               c'[ a fis' ees']
               c''[ a' fis'' ees'']
               c'''[ ees'' fis'' a']
               c''[ ees' fis' a]
  \clef bass
               c'[ ees fis a,]
               c1
 }
>>

% 83. TRITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, fis d]
  
  \clef treble
               c'[ aes fis' d']
               c''[ aes' fis'' d'']
               c'''[ d'' fis'' aes']
               c''[ d' fis' aes]
  \clef bass
               c'[ d fis aes,]
               c1
 }
>>

% 84. TRITONE: INFRAPOLATION OF ONE NOTE
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, fis cis]
  
  \clef treble
               c'[ g fis' cis']
               c''[ g' fis'' cis'']
               c'''[ cis'' fis'' g']
               c''[ cis' fis' g]
  \clef bass
               c'[ cis fis g,]
               c1
 }
>>

%%% INFRAPOLATION OF TWO NOTES %%%

% 85. TRITONE: INFRAPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, b, fis e f]
  
  \clef treble
               c'[ bes b fis' e' f']
               c''[ bes' b' fis'' e'' f'']
               c'''[ f'' e'' fis'' b' bes']
               c''[ f' e' fis' b bes]
  \clef bass
               c'[ f e fis b, bes,]
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

% 94. TRITONE: INFRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, b, f,]
               fis[ dis f b,]
  
  \clef treble
               c'[ a b f]
               fis'[ dis' f' b]
               c''[ b f' dis']
               fis'[ f b a]
  \clef bass
               c'[ b, f dis]
               fis[ f, b, a,]
               c1
 }
>>

% 95. TRITONE: INFRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, bes, e,]
               fis[ cis e ais,]
  
  \clef treble
               c'[ g bes e]
               fis'[ cis' e' ais]
               c''[ ais e' cis']
               fis'[ e bes g]
  \clef bass
               c'[ ais, e cis]
               fis[ e, bes, g,]
               c1
 }
>>

% 96. TRITONE: INFRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ges, aes, e,]
               fis[ c d a,]
  
  \clef treble
               c'[ ges aes e]
               fis'[ c' d' a]
               c''[ a d' c']
               fis'[ e aes ges]
  \clef bass
               c'[ a, d c]
               fis[ e, aes, ges,]
               c1
 }
>>

% 97. TRITONE: INFRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ gis, b, e,]
               fis[ d f bes,]
  
  \clef treble
               c'[ gis b e]
               fis'[ d' f' bes]
               c''[ bes f' d']
               fis'[ e b gis]
  \clef bass
               c'[ bes, f d]
               fis[ e, b, gis,]
               c1
 }
>>

% 98. TRITONE: INFRAPOLATION OF THREE NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, bes, ees,]
               fis[ cis e a,]
  
  \clef treble
               c'[ g bes ees]
               fis'[ cis' e' a]
               c''[ a e' cis']
               fis'[ ees bes g]
  \clef bass
               c'[ a, e cis]
               fis[ ees, bes, g,]
               c1
 }
>>

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

% 141. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d g]
  
  \clef treble
               fis[ f aes des']
               c'[ b d' g']
               fis'[ f' aes' des'']
               c''[ des'' aes' f']
               fis'[ g' d' b]
               c'[ des' aes f]
  \clef bass
               fis[ g d b,]
               c1
 }
>>

% 142. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d gis]
  
  \clef treble
               fis[ f aes d']
               c'[ b d' gis']
               fis'[ f' aes' d'']
               c''[ d'' aes' f']
               fis'[ gis' d' b]
               c'[ d' aes f]
  \clef bass
               fis[ gis d b,]
               c1
 }
>>

% 143. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d a]
  
  \clef treble
               fis[ f aes ees']
               c'[ b d' a']
               fis'[ f' aes' ees'']
               c''[ ees'' aes' f']
               fis'[ a' d' b]
               c'[ ees' aes f]
  \clef bass
               fis[ a d b,]
               c1
 }
>>

% 144. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, d ais]
  
  \clef treble
               fis[ f aes e']
               c'[ b d' ais']
               fis'[ f' aes' e'']
               c''[ e'' aes' f']
               fis'[ ais' d' b]
               c'[ e' aes f]
  \clef bass
               fis[ ais d b,]
               c1
 }
>>

% 145. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis g]
  
  \clef treble
               fis[ f a des']
               c'[ b dis' g']
               fis'[ f' a' des'']
               c''[ des'' a' f']
               fis'[ g' dis' b]
               c'[ des' a f]
  \clef bass
               fis[ g dis b,]
               c1
 }
>>

% 146. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis gis]
  
  \clef treble
               fis[ f a d']
               c'[ b dis' gis']
               fis'[ f' a' d'']
               c''[ d'' a' f']
               fis'[ gis' dis' b]
               c'[ d' a f]
  \clef bass
               fis[ gis dis b,]
               c1
 }
>>

% 147. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis a]
  
  \clef treble
               fis[ f a ees']
               c'[ b dis' a']
               fis'[ f' a' ees'']
               c''[ ees'' a' f']
               fis'[ a' dis' b]
               c'[ ees' a f]
  \clef bass
               fis[ a dis b,]
               c1
 }
>>

% 148. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, dis ais]
  
  \clef treble
               fis[ f a e']
               c'[ b dis' ais']
               fis'[ f' a' e'']
               c''[ e'' a' f']
               fis'[ ais' dis' b]
               c'[ e' a f]
  \clef bass
               fis[ ais dis b,]
               c1
 }
>>

% 149. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, e g]
  
  \clef treble
               fis[ f bes des']
               c'[ b e' g']
               fis'[ f' bes' des'']
               c''[ des'' bes' f']
               fis'[ g' e' b]
               c'[ des' bes f]
  \clef bass
               fis[ g e b,]
               c1
 }
>>

% 150. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, e gis]
  
  \clef treble
               fis[ f bes d']
               c'[ b e' gis']
               fis'[ f' bes' d'']
               c''[ d'' bes' f']
               fis'[ gis' e' b]
               c'[ d' bes f]
  \clef bass
               fis[ gis e b,]
               c1
 }
>>

% 151. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, e a]
  
  \clef treble
               fis[ f bes ees']
               c'[ b e' a']
               fis'[ f' bes' ees'']
               c''[ ees'' bes' f']
               fis'[ a' e' b]
               c'[ ees' bes f]
  \clef bass
               fis[ a e b,]
               c1
 }
>>

% 152. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, e ais]
  
  \clef treble
               fis[ f bes e']
               c'[ b e' ais']
               fis'[ f' bes' e'']
               c''[ e'' bes' f']
               fis'[ ais' e' b]
               c'[ e' bes f]
  \clef bass
               fis[ ais e b,]
               c1
 }
>>

% 153. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f g]
  
  \clef treble
               fis[ f b cis']
               c'[ b f' g']
               fis'[ f' b' cis'']
               c''[ cis'' b' f']
               fis'[ g' f' b]
               c'[ cis' b f]
  \clef bass
               fis[ g f b,]
               c1
 }
>>

% 154. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f aes]
  
  \clef treble
               fis[ f b d']
               c'[ b f' aes']
               fis'[ f' b' d'']
               c''[ d'' b' f']
               fis'[ aes' f' b]
               c'[ d' b f]
  \clef bass
               fis[ aes f b,]
               c1
 }
>>

% 155. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f a]
  
  \clef treble
               fis[ f b ees']
               c'[ b f' a']
               fis'[ f' b' ees'']
               c''[ ees'' b' f']
               fis'[ a' f' b]
               c'[ ees' b f]
  \clef bass
               fis[ a f b,]
               c1
 }
>>

% 156. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f ais]
  
  \clef treble
               fis[ f b e']
               c'[ b f' ais']
               fis'[ f' b' e'']
               c''[ e'' b' f']
               fis'[ ais' f' b]
               c'[ e' b f]
  \clef bass
               fis[ ais f b,]
               c1
 }
>>

% 157. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, des g]
  
  \clef treble
               fis[ e g des']
               c'[ bes des' g']
               fis'[ e' g' des'']
               c''[ des'' g' e']
               fis'[ g' des' bes]
               c'[ des' g e]
  \clef bass
               fis[ g des bes,]
               c1
 }
>>

% 158. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, des aes]
  
  \clef treble
               fis[ e g d']
               c'[ bes des' aes']
               fis'[ e' g' d'']
               c''[ d'' g' e']
               fis'[ aes' des' bes]
               c'[ d' g e]
  \clef bass
               fis[ aes des bes,]
               c1
 }
>>

% 159. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, des a]
  
  \clef treble
               fis[ e g ees']
               c'[ bes des' a']
               fis'[ e' g' ees'']
               c''[ ees'' g' e']
               fis'[ a' des' bes]
               c'[ ees' g e]
  \clef bass
               fis[ a des bes,]
               c1
 }
>>

% 160. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, d g]
  
  \clef treble
               fis[ e gis cis']
               c'[ bes d' g']
               fis'[ e' gis' cis'']
               c''[ cis'' gis' e']
               fis'[ g' d' bes]
               c'[ cis' gis e]
  \clef bass
               fis[ g d bes,]
               c1
 }
>>

% 161. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, d gis]
  
  \clef treble
               fis[ e gis d']
               c'[ bes d' gis']
               fis'[ e' gis' d'']
               c''[ d'' gis' e']
               fis'[ gis' d' bes]
               c'[ d' gis e]
  \clef bass
               fis[ gis d bes,]
               c1
 }
>>

% 162. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, d a]
  
  \clef treble
               fis[ e gis dis']
               c'[ bes d' a']
               fis'[ e' gis' dis'']
               c''[ dis'' gis' e']
               fis'[ a' d' bes]
               c'[ dis' gis e]
  \clef bass
               fis[ a d bes,]
               c1
 }
>>

% 163. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, ees g]
  
  \clef treble
               fis[ e a cis']
               c'[ bes ees' g']
               fis'[ e' a' cis'']
               c''[ cis'' a' e']
               fis'[ g' ees' bes]
               c'[ cis' a e]
  \clef bass
               fis[ g ees bes,]
               c1
 }
>>

% 164. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, ees aes]
  
  \clef treble
               fis[ e a d']
               c'[ bes ees' aes']
               fis'[ e' a' d'']
               c''[ d'' a' e']
               fis'[ aes' ees' bes]
               c'[ d' a e]
  \clef bass
               fis[ aes ees bes,]
               c1
 }
>>

% 165. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, ees a]
  
  \clef treble
               fis[ e a ees']
               c'[ bes ees' a']
               fis'[ e' a' ees'']
               c''[ ees'' a' e']
               fis'[ a' ees' bes]
               c'[ ees' a e]
  \clef bass
               fis[ a ees bes,]
               c1
 }
>>

% 166. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, e g]
  
  \clef treble
               fis[ e bes des']
               c'[ bes e' g']
               fis'[ e' bes' des'']
               c''[ des'' bes' e']
               fis'[ g' e' bes]
               c'[ des' bes e]
  \clef bass
               fis[ g e bes,]
               c1
 }
>>

% 167. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, e gis]
  
  \clef treble
               fis[ e bes d']
               c'[ bes e' gis']
               fis'[ e' bes' d'']
               c''[ d'' bes' e']
               fis'[ gis' e' bes]
               c'[ d' bes e]
  \clef bass
               fis[ gis e bes,]
               c1
 }
>>

% 168. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, e a]
  
  \clef treble
               fis[ e bes ees']
               c'[ bes e' a']
               fis'[ e' bes' ees'']
               c''[ ees'' bes' e']
               fis'[ a' e' bes]
               c'[ ees' bes e]
  \clef bass
               fis[ a e bes,]
               c1
 }
>>

% 169. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, f g]
  
  \clef treble
               fis[ e b cis']
               c'[ bes f' g']
               fis'[ e' b' cis'']
               c''[ cis'' b' e']
               fis'[ g' f' bes]
               c'[ cis' b e]
  \clef bass
               fis[ g f bes,]
               c1
 }
>>

% 170. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, f aes]
  
  \clef treble
               fis[ e b d']
               c'[ bes f' aes']
               fis'[ e' b' d'']
               c''[ d'' b' e']
               fis'[ aes' f' bes]
               c'[ d' b e]
  \clef bass
               fis[ aes f bes,]
               c1
 }
>>

% 171. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, f a]
  
  \clef treble
               fis[ e b dis']
               c'[ bes f' a']
               fis'[ e' b' dis'']
               c''[ dis'' b' e']
               fis'[ a' f' bes]
               c'[ dis' b e]
  \clef bass
               fis[ a f bes,]
               c1
 }
>>

% 172. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, cis g]
  
  \clef treble
               fis[ ees g des']
               c'[ a cis' g']
               fis'[ ees' g' des'']
               c''[ des'' g' ees']
               fis'[ g' cis' a]
               c'[ des' g ees]
  \clef bass
               fis[ g cis a,]
               c1
 }
>>

% 173. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, cis gis]
  
  \clef treble
               fis[ ees g d']
               c'[ a cis' gis']
               fis'[ ees' g' d'']
               c''[ d'' g' ees']
               fis'[ gis' cis' a]
               c'[ d' g ees]
  \clef bass
               fis[ gis cis a,]
               c1
 }
>>

% 174. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, d g]
  
  \clef treble
               fis[ ees aes des']
               c'[ a d' g']
               fis'[ ees' aes' des'']
               c''[ des'' aes' ees']
               fis'[ g' d' a]
               c'[ des' aes ees]
  \clef bass
               fis[ g d a,]
               c1
 }
>>

% 175. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, d gis]
  
  \clef treble
               fis[ ees aes d']
               c'[ a d' gis']
               fis'[ ees' aes' d'']
               c''[ d'' aes' ees']
               fis'[ gis' d' a]
               c'[ d' aes ees]
  \clef bass
               fis[ gis d a,]
               c1
 }
>>

% 176. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, ees g]
  
  \clef treble
               fis[ ees a des']
               c'[ a ees' g']
               fis'[ ees' a' des'']
               c''[ des'' a' ees']
               fis'[ g' ees' a]
               c'[ des' a ees]
  \clef bass
               fis[ g ees a,]
               c1
 }
>>

% 177. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, ees aes]
  
  \clef treble
               fis[ ees a d']
               c'[ a ees' aes']
               fis'[ ees' a' d'']
               c''[ d'' a' ees']
               fis'[ aes' ees' a]
               c'[ d' a ees]
  \clef bass
               fis[ aes ees a,]
               c1
 }
>>

% 178. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, e g]
  
  \clef treble
               fis[ ees bes des']
               c'[ a e' g']
               fis'[ ees' bes' des'']
               c''[ des'' bes' ees']
               fis'[ g' e' a]
               c'[ des' bes ees]
  \clef bass
               fis[ g e a,]
               c1
 }
>>

% 179. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, e gis]
  
  \clef treble
               fis[ ees bes d']
               c'[ a e' gis']
               fis'[ ees' bes' d'']
               c''[ d'' bes' ees']
               fis'[ gis' e' a]
               c'[ d' bes ees]
  \clef bass
               fis[ gis e a,]
               c1
 }
>>

% 180. TRITONE: INFRA-INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, f aes]
  
  \clef treble
               fis[ dis b d']
               c'[ a f' aes']
               fis'[ dis' b' d'']
               c''[ d'' b' dis']
               fis'[ aes' f' a]
               c'[ d' b dis]
  \clef bass
               fis[ aes f a,]
               c1
 }
>>

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

% 295. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, f e dis a gis g des']
  
  \clef treble
               c'[ b f' e' dis' a' gis' g' des'']
               c''[ des'' g' gis' a' dis' e' f' b]
               
  \clef bass  
               c'[ des' g gis a dis e f b,]
               c1   

 }
>>

% 296. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, fis e dis ais gis g d']
  
  \clef treble
               c'[ b fis' e' dis' ais' gis' g' d'']
               c''[ d'' g' gis' ais' dis' e' fis' b]
               
  \clef bass  
               c'[ d' g gis ais dis e fis b,]
               c1   

 }
>>

% 297. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, g e dis b gis g ees']
  
  \clef treble
               c'[ b g' e' dis' b' gis' g' ees'']
               c''[ ees'' g' gis' b' dis' e' g' b]
               
  \clef bass  
               c'[ ees' g gis b dis e g b,]
               c1   

 }
>>

% 298. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, gis e ees c' gis g e']
  
  \clef treble
               c'[ b gis' e' ees' c'' gis' g' e'']
               c''[ e'' g' gis' c'' ees' e' gis' b]
               
  \clef bass  
               c'[ e' g gis c' ees e gis b,]
               c1   

 }
>>

% 299. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, a e ees des' gis g f']
  
  \clef treble
               c'[ b a' e' ees' des'' gis' g' f'']
               c''[ f'' g' gis' des'' ees' e' a' b]
               
  \clef bass  
               c'[ f' g gis des' ees e a b,]
               c1   

 }
>>

% 300. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ b, bes e ees d' gis g fis']
  
  \clef treble
               c'[ b bes' e' ees' d'' gis' g' fis'']
               c''[ fis'' g' gis' d'' ees' e' bes' b]
               
  \clef bass  
               c'[ fis' g gis d' ees e bes b,]
               c1   

 }
>>

% 301. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, f e d a gis fis cis']
  
  \clef treble
               c'[ bes f' e' d' a' gis' fis' cis'']
               c''[ cis'' fis' gis' a' d' e' f' bes]
               
  \clef bass  
               c'[ cis' fis gis a d e f bes,]
               c1   

 }
>>

% 302. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, fis e d ais gis fis d']
  
  \clef treble
               c'[ bes fis' e' d' ais' gis' fis' d'']
               c''[ d'' fis' gis' ais' d' e' fis' bes]
               
  \clef bass  
               c'[ d' fis gis ais d e fis bes,]
               c1   

 }
>>

% 303. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, b e d b gis fis dis']
  
  \clef treble
               c'[ bes b' e' d' b' gis' fis' dis'']
               c''[ dis'' fis' gis' b' d' e' b' bes]
               
  \clef bass  
               c'[ dis' fis gis b d e b bes,]
               c1   

 }
>>

% 304. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, gis e d c' gis fis e']
  
  \clef treble
               c'[ bes gis' e' d' c'' gis' fis' e'']
               c''[ e'' fis' gis' c'' d' e' gis' bes]
               
  \clef bass  
               c'[ e' fis gis c' d e gis bes,]
               c1   

 }
>>

% 305. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ bes, a e d des' gis fis f']
  
  \clef treble
               c'[ bes a' e' d' des'' gis' fis' f'']
               c''[ f'' fis' gis' des'' d' e' a' bes]
               
  \clef bass  
               c'[ f' fis gis des' d e a bes,]
               c1   

 }
>>

% 306. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, f e cis a gis f des']
  
  \clef treble
               c'[ a f' e' cis' a' gis' f' des'']
               c''[ des'' f' gis' a' cis' e' f' a]
               
  \clef bass  
               c'[ des' f gis a cis e f a,]
               c1   

 }
>>

% 307. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, fis e cis bes gis f d']
  
  \clef treble
               c'[ a fis' e' cis' bes' gis' f' d'']
               c''[ d'' f' gis' bes' cis' e' fis' a]
               
  \clef bass  
               c'[ d' f gis bes cis e fis a,]
               c1   

 }
>>

% 308. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, g e cis b gis f ees']
  
  \clef treble
               c'[ a g' e' cis' b' gis' f' ees'']
               c''[ ees'' f' gis' b' cis' e' g' a]
               
  \clef bass  
               c'[ ees' f gis b cis e g a,]
               c1   

 }
>>

% 309. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ a, gis e cis c' gis f e']
  
  \clef treble
               c'[ a gis' e' cis' c'' gis' f' e'']
               c''[ e'' f' gis' c'' cis' e' gis' a]
               
  \clef bass  
               c'[ e' f gis c' cis e gis a,]
               c1   

 }
>>

% 310. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, f e c a gis e cis']
  
  \clef treble
               c'[ aes f' e' c' a' gis' e' cis'']
               c''[ cis'' e' gis' a' c' e' f' aes]
               
  \clef bass  
               c'[ cis' e gis a c e f aes,]
               c1   

 }
>>

% 311. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, fis e c ais gis e d']
  
  \clef treble
               c'[ aes fis' e' c' ais' gis' e' d'']
               c''[ d'' e' gis' ais' c' e' fis' aes]
               
  \clef bass  
               c'[ d' e gis ais c e fis aes,]
               c1   

 }
>>

% 312. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ aes, g e c b gis e ees']
  
  \clef treble
               c'[ aes g' e' c' b' gis' e' ees'']
               c''[ ees'' e' gis' b' c' e' g' aes]
               
  \clef bass  
               c'[ ees' e gis b c e g aes,]
               c1   

 }
>>


% 313. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, f e b, a gis ees des']
  
  \clef treble
               c'[ g f' e' b a' gis' ees' des'']
               c''[ des'' ees' gis' a' b e' f' g]
               
  \clef bass  
               c'[ des' ees gis a b, e f g,]
               c1   

 }
>>

% 314. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ g, fis e b, bes gis ees d']
  
  \clef treble
               c'[ g fis' e' b bes' gis' ees' d'']
               c''[ d'' ees' gis' bes' b e' fis' g]
               
  \clef bass  
               c'[ d' ees gis bes b, e fis g,]
               c1   

 }
>>

% 315. DITONE: INFRA-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ fis, f e bes, a gis d des']
  
  \clef treble
               c'[ fis f' e' bes a' gis' d' des'']
               c''[ des'' d' gis' a' bes e' f' fis]
               
  \clef bass  
               c'[ des' d gis a bes, e f fis,]
               c1   

 }
>>


%%% INTER-ULTRAPOLATION %%%

% 316. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des f e f a gis a cis']
  
  \clef treble
               c'[ des' f' e' f' a' gis' a' cis'']
               c''[ cis'' a' gis' a' f' e' f' des']
               
  \clef bass  
               c'[ cis' a gis a f e f des]
               c1   

 }
>>

% 317. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis fis e f bes gis a d']
  
  \clef treble
               c'[ cis' fis' e' f' bes' gis' a' d'']
               c''[ d'' a' gis' bes' f' e' fis' cis']
               
  \clef bass  
               c'[ d' a gis bes f e fis cis]
               c1   

 }
>>

% 318. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des g e f b gis a ees']
  
  \clef treble
               c'[ des' g' e' f' b' gis' a' ees'']
               c''[ ees'' a' gis' b' f' e' g' des']
               
  \clef bass  
               c'[ ees' a gis b f e g des]
               c1   

 }
>>

% 319. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis gis e f c' gis a e']
  
  \clef treble
               c'[ cis' gis' e' f' c'' gis' a' e'']
               c''[ e'' a' gis' c'' f' e' gis' cis']
               
  \clef bass  
               c'[ e' a gis c' f e gis cis]
               c1   

 }
>>

% 320. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis a e f des' gis a f']
  
  \clef treble
               c'[ cis' a' e' f' des'' gis' a' f'']
               c''[ f'' a' gis' des'' f' e' a' cis']
               
  \clef bass  
               c'[ f' a gis des' f e a cis]
               c1   

 }
>>

% 321. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des bes e f d' gis a fis']
  
  \clef treble
               c'[ des' bes' e' f' d'' gis' a' fis'']
               c''[ fis'' a' gis' d'' f' e' bes' des']
               
  \clef bass  
               c'[ fis' a gis d' f e bes des]
               c1   

 }
>>

% 322. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis b e f ees' gis a g']
  
  \clef treble
               c'[ cis' b' e' f' ees'' gis' a' g'']
               c''[ g'' a' gis' ees'' f' e' b' cis']
               
  \clef bass  
               c'[ g' a gis ees' f e b cis]
               c1   

 }
>>

% 323. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d f e fis a gis ais cis']
  
  \clef treble
               c'[ d' f' e' fis' a' gis' ais' cis'']
               c''[ cis'' ais' gis' a' fis' e' f' d']
               
  \clef bass  
               c'[ cis' ais gis a fis e f d]
               c1   

 }
>>

% 324. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d fis e fis bes gis bes d']
  
  \clef treble
               c'[ d' fis' e' fis' bes' gis' bes' d'']
               c''[ d'' bes' gis' bes' fis' e' fis' d']
               
  \clef bass  
               c'[ d' bes gis bes fis e fis d]
               c1   

 }
>>

% 325. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d g e fis b gis bes ees']
  
  \clef treble
               c'[ d' g' e' fis' b' gis' bes' ees'']
               c''[ ees'' bes' gis' b' fis' e' g' d']
               
  \clef bass  
               c'[ ees' bes gis b fis e g d]
               c1   

 }
>>

% 326. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d gis e fis c' gis bes e']
  
  \clef treble
               c'[ d' gis' e' fis' c'' gis' bes' e'']
               c''[ e'' bes' gis' c'' fis' e' gis' d']
               
  \clef bass  
               c'[ e' bes gis c' fis e gis d]
               c1   

 }
>>

% 327. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d a e fis cis' gis bes f']
  
  \clef treble
               c'[ d' a' e' fis' cis'' gis' bes' f'']
               c''[ f'' bes' gis' cis'' fis' e' a' d']
               
  \clef bass  
               c'[ f' bes gis cis' fis e a d]
               c1   

 }
>>

% 328. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d bes e fis d' gis bes fis']
  
  \clef treble
               c'[ d' bes' e' fis' d'' gis' bes' fis'']
               c''[ fis'' bes' gis' d'' fis' e' bes' d']
               
  \clef bass  
               c'[ fis' bes gis d' fis e bes d]
               c1   

 }
>>

% 329. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d b e fis ees' gis bes g']
  
  \clef treble
               c'[ d' b' e' fis' ees'' gis' bes' g'']
               c''[ g'' bes' gis' ees'' fis' e' b' d']
               
  \clef bass  
               c'[ g' bes gis ees' fis e b d]
               c1   

 }
>>

% 330. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees f e g a gis b cis']
  
  \clef treble
               c'[ ees' f' e' g' a' gis' b' cis'']
               c''[ cis'' b' gis' a' g' e' f' ees']
               
  \clef bass  
               c'[ cis' b gis a g e f ees]
               c1   

 }
>>

% 331. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees fis e g bes gis b d']
  
  \clef treble
               c'[ ees' fis' e' g' bes' gis' b' d'']
               c''[ d'' b' gis' bes' g' e' fis' ees']
               
  \clef bass  
               c'[ d' b gis bes g e fis ees]
               c1   

 }
>>

% 332. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees g e g b gis b dis']
  
  \clef treble
               c'[ ees' g' e' g' b' gis' b' dis'']
               c''[ dis'' b' gis' b' g' e' g' ees']
               
  \clef bass  
               c'[ dis' b gis b g e g ees]
               c1   

 }
>>

% 333. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees aes e g c' gis b e']
  
  \clef treble
               c'[ ees' aes' e' g' c'' gis' b' e'']
               c''[ e'' b' gis' c'' g' e' aes' ees']
               
  \clef bass  
               c'[ e' b gis c' g e aes ees]
               c1   

 }
>>

% 334. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees a e g cis' gis b f']
  
  \clef treble
               c'[ ees' a' e' g' cis'' gis' b' f'']
               c''[ f'' b' gis' cis'' g' e' a' ees']
               
  \clef bass  
               c'[ f' b gis cis' g e a ees]
               c1   

 }
>>

% 335. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees bes e g d' gis b fis']
  
  \clef treble
               c'[ ees' bes' e' g' d'' gis' b' fis'']
               c''[ fis'' b' gis' d'' g' e' bes' ees']
               
  \clef bass  
               c'[ fis' b gis d' g e bes ees]
               c1   

 }
>>

% 336. DITONE: INTER-ULTRAPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees b e g dis' gis b g']
  
  \clef treble
               c'[ ees' b' e' g' dis'' gis' b' g'']
               c''[ g'' b' gis' dis'' g' e' b' ees']
               
  \clef bass  
               c'[ g' b gis dis' g e b ees]
               c1   

 }
>>

%%% INFRA-INTER-ULTRAPOLATION %%%

% --- falta --- %

%%% MISCELLANEOUS PATTERNS %%%

% --- falta --- %

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% SESQUITONE PROGRESSION %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% QUADRITONE PROGRESSION %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% INTERPOLATION OF TWO NOTES %%%

% 664. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des ees gis a b e' f' g']
  
  \clef treble
               c''[ des'' ees'' gis'' a'' b'' e''' f''' g''']
               c''''[ g''' f''' e''' b'' a'' gis'' ees'' des'']
                           
  \clef bass  
               c''[ g' f' e' b a gis ees des]
               c1   

 }
>>

% 665. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis e gis a c' e' f' aes']
  
  \clef treble
               c''[ cis'' e'' gis'' a'' c''' e''' f''' aes''']
               c''''[ aes''' f''' e''' c''' a'' gis'' e'' cis'']
                           
  \clef bass  
               c''[ aes' f' e' c' a gis e cis]
               c1   

 }
>>

% 666. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ des f aes a cis' e' f' a']
  
  \clef treble
               c''[ des'' f'' aes'' a'' cis''' e''' f''' a''']
               c''''[ a''' f''' e''' cis''' a'' aes'' f'' des'']
                           
  \clef bass  
               c''[ a' f' e' cis' a aes f des]
               c1   

 }
>>

% 667. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis fis gis a d' e' f' b']
  
  \clef treble
               c''[ cis'' fis'' gis'' a'' d''' e''' f''' b''']
               c''''[ b''' f''' e''' d''' a'' gis'' fis'' cis'']
                           
  \clef bass  
               c''[ b' f' e' d' a gis fis cis]
               c1   

 }
>>

% 668. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ cis g gis a dis' e' f' b']
  
  \clef treble
               c''[ cis'' g'' gis'' a'' dis''' e''' f''' b''']
               c''''[ b''' f''' e''' dis''' a'' gis'' g'' cis'']
                           
  \clef bass  
               c''[ b' f' e' dis' a gis g cis]
               c1   

 }
>>


% 669. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d ees aes bes b e' fis' g']
  
  \clef treble
               c''[ d'' ees'' aes'' bes'' b'' e''' fis''' g''']
               c''''[ g''' fis''' e''' b'' bes'' aes'' ees'' d'']
                           
  \clef bass  
               c''[ g' fis' e' b bes aes ees d]
               c1   

 }
>>

% 670. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d e aes bes c' e' fis' gis']
  
  \clef treble
               c''[ d'' e'' aes'' bes'' c''' e''' fis''' gis''']
               c''''[ gis''' fis''' e''' c''' bes'' aes'' e'' d'']
                           
  \clef bass  
               c''[ gis' fis' e' c' bes aes e d]
               c1   

 }
>>

% 671. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d f aes bes des' e' fis' a']
  
  \clef treble
               c''[ d'' f'' aes'' bes'' des''' e''' fis''' a''']
               c''''[ a''' fis''' e''' des''' bes'' aes'' f'' d'']
                           
  \clef bass  
               c''[ a' fis' e' des' bes aes f d]
               c1   

 }
>>

% 672. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d fis aes bes d' e' fis' bes']
  
  \clef treble
               c''[ d'' fis'' aes'' bes'' d''' e''' fis''' bes''']
               c''''[ bes''' fis''' e''' d''' bes'' aes'' fis'' d'']
                           
  \clef bass  
               c''[ bes' fis' e' d' bes aes fis d]
               c1   

 }
>>


% 673. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ d g aes bes ees' e' fis' b']
  
  \clef treble
               c''[ d'' g'' aes'' bes'' ees''' e''' fis''' b''']
               c''''[ b''' fis''' e''' ees''' bes'' aes'' g'' d'']
                           
  \clef bass  
               c''[ b' fis' e' ees' bes aes g d]
               c1   

 }
>>

% 674. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees e aes b c' e' g' aes']
  
  \clef treble
               c''[ ees'' e'' aes'' b'' c''' e''' g''' aes''']
               c''''[ aes''' g''' e''' c''' b'' aes'' e'' ees'']
                           
  \clef bass  
               c''[ aes' g' e' c' b aes e ees]
               c1   

 }
>>

% 675. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees f aes b cis' e' g' a']
  
  \clef treble
               c''[ ees'' f'' aes'' b'' cis''' e''' g''' a''']
               c''''[ a''' g''' e''' cis''' b'' aes'' f'' ees'']
                           
  \clef bass  
               c''[ a' g' e' cis' b aes f ees]
               c1   

 }
>>

% 676. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees ges aes b d' e' g' bes']
  
  \clef treble
               c''[ ees'' ges'' aes'' b'' d''' e''' g''' bes''']
               c''''[ bes''' g''' e''' d''' b'' aes'' ges'' ees'']
                           
  \clef bass  
               c''[ bes' g' e' d' b aes ges ees]
               c1   

 }
>>

% 677. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees g aes b dis' e' g' b']
  
  \clef treble
               c''[ ees'' g'' aes'' b'' dis''' e''' g''' b''']
               c''''[ b''' g''' e''' dis''' b'' aes'' g'' ees'']
                           
  \clef bass  
               c''[ b' g' e' dis' b aes g ees]
               c1   

 }
>>

% 678. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e f aes c' des' e' gis' a']
  
  \clef treble
               c''[ e'' f'' aes'' c''' des''' e''' gis''' a''']
               c''''[ a''' gis''' e''' des''' c''' aes'' f'' e'']
                           
  \clef bass  
               c''[ a' gis' e' des' c' aes f e]
               c1   

 }
>>

% 679. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e fis aes c' d' e' gis' bes']
  
  \clef treble
               c''[ e'' fis'' aes'' c''' d''' e''' gis''' bes''']
               c''''[ bes''' gis''' e''' d''' c''' aes'' fis'' e'']
                           
  \clef bass  
               c''[ bes' gis' e' d' c' aes fis e]
               c1   

 }
>>

% 680. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e g aes c' ees' e' gis' b']
  
  \clef treble
               c''[ e'' g'' aes'' c''' ees''' e''' gis''' b''']
               c''''[ b''' gis''' e''' ees''' c''' aes'' g'' e'']
                           
  \clef bass  
               c''[ b' gis' e' ees' c' aes g e]
               c1   

 }
>>

% 681. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f ges aes des' d' e' a' bes']
  
  \clef treble
               c''[ f'' ges'' aes'' des''' d''' e''' a''' bes''']
               c''''[ bes''' a''' e''' d''' des''' aes'' ges'' f'']
                           
  \clef bass  
               c''[ bes' a' e' d' des' aes ges f]
               c1   

 }
>>

% 682. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f g aes des' ees' e' a' b']
  
  \clef treble
               c''[ f'' g'' aes'' des''' ees''' e''' a''' b''']
               c''''[ b''' a''' e''' ees''' des''' aes'' g'' f'']
                           
  \clef bass  
               c''[ b' a' e' ees' des' aes g f]
               c1   

 }
>>

%%% INTERPOLATION OF THREE NOTES %%%

% --- falta --- %


%%% INTERPOLATION OF FOUR NOTES %%%

% --- falta --- %

%%% ULTRAPOLATION OF ONE NOTE %%%

% --- falta --- %

%%% INFRAPOLATION OF ONE NOTE %%%

% ---falta --- %

%%% INTER-INFRAPOLATION %%%

% 724. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e b, aes c' g e' gis' dis']
  
  \clef treble
               c''[ e'' b' aes'' c''' g'' e''' gis''' dis''']
               c''''[ dis''' gis''' e''' g'' c''' aes'' b' e'']
                           
  \clef bass  
               c''[ dis' gis' e' g c' aes b, e]
               c1   

 }
>>

% 725. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ ees bes, aes b' fis e' g' d']
  
  \clef treble
               c''[ ees'' bes' aes'' b''' fis'' e''' g''' d''']
               c''''[ d''' g''' e''' fis'' b''' aes'' bes' ees'']
                           
  \clef bass  
               c''[ d' g' e' fis b' aes bes, ees]
               c1   

 }
>>

% 726. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ e a, aes c' f e' gis' cis']
  
  \clef treble
               c''[ e'' a' aes'' c''' f'' e''' gis''' cis''']
               c''''[ cis''' gis''' e''' f'' c''' aes'' a' e'']
                           
  \clef bass  
               c''[ cis' gis' e' f c' aes a, e]
               c1   

 }
>>

% 727. DITONE: INTERPOLATION OF TWO NOTES
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef bass
               c16[ f a, aes des' f e' a' cis']
  
  \clef treble
               c''[ f'' a' aes'' des''' f'' e''' a''' cis''']
               c''''[ cis''' a''' e''' f'' des''' aes'' a' f'']
                           
  \clef bass  
               c''[ cis' a' e' f des' aes a, f]
               c1   

 }
>>

%%% ULTRA-INTERPOLATION %%%

% --- falta --- %