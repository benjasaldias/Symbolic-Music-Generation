% Thesaurus of Scales and Melodic Patterns by Nicolas Slonimsky, 1947.

% Nota: toda partitura está hecha sin ciertos comandos que facilitan la transcripción,
% pues esto dificulta la manipulación de los datos. Tampoco se tienen títulos visibles en PDF,
% éstos se encuentran comentados.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRITONE PROGRESSION %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. TRITONE: 1 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
  \relative c'{
               c16[ cis fis g] 
               c![ cis fis g] 
               c![ g fis cis] 
               c![ g fis cis]
              }
              r4
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ cis fis g]} \\ {c,,[ cis fis g]}>>
            c![ cis fis g]
             }

    \clef treble
  \relative c'{
            c![ cis fis g]
            c![ g fis cis]
              }
    
    \clef bass
  \relative c'{
            c![ g fis d]
            <<{c'[ gis fis cis]} \\ {c[ gis fis cis]}>>
            c1
             }

  }
>>

% 2. TRITONE: 1 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
  \relative c'{
               c16[ d fis gis] 
               c![ d fis gis] 
               c![ gis fis d] 
               c![ gis fis d]
              }
              r4
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ d fis gis]} \\ {c,,[ d fis gis]}>>
            c![ d fis gis]
             }

    \clef treble
  \relative c'{
            c![ d fis gis]
            c![ gis fis d]
              }
    
    \clef bass
  \relative c'{
            c![ gis fis d]
            <<{c'[ gis fis d]} \\ {c[ gis fis d]}>>
            c1
             }

  }
>>

% 3. TRITONE: 1 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
  \relative c'{
               c16[ e fis bes] 
               c![ e fis bes] 
               c![ bes fis e] 
               c![ bes fis e]
              }
              r4
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ e fis bes]} \\ {c,,[ e fis bes]}>>
            c![ e fis bes]
             }

    \clef treble
  \relative c'{
            c![ e fis bes]
            c![ bes fis e]
              }
    
    \clef bass
  \relative c'{
            c![ bes fis d]
            <<{c'[ bes fis e]} \\ {c[ bes fis e]}>>
            c1
             }

  }
>>

% 1. TRITONE: 1 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
  \relative c'{
               c16[ f fis b] 
               c![ f fis b] 
               c![ b fis f] 
               c![ b fis f]
              }
              r4
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ f fis b]} \\ {c,,[ f fis b]}>>
            c![ f fis b]
             }

    \clef treble
  \relative c'{
            c![ f fis b]
            c![ b fis f]
              }
    
    \clef bass
  \relative c'{
            c![ b fis f]
            <<{c'[ b fis f]} \\ {c[ b fis f]}>>
            c1
             }

  }
>>

% 5. TRITONE: 2 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
              r8
  \relative c'{
               c16[ cis d fis g aes] 
               c![ cis d fis g aes] 
               c![ aes g fis d cis]
               c![ aes g fis d cis]
              }
              r4
              r8
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ cis d fis g aes]} \\ {c,,[ cis d fis g  aes]}>>
            c![ cis d fis g aes]
             }

    \clef treble
  \relative c'{
            c![ cis d fis g aes]
            c![ aes g fis d cis]
              }
    
    \clef bass
  \relative c'{
            c![ aes g fis d cis]
            <<{c'[ aes g fis d cis]} \\ {c[ aes g fis d cis]}>>
            c1
             }

  }
>>

% 6. TRITONE: 2 NOTE INTERPOLATION
\new PianoStaff <<
\cadenzaOn
  \new Staff = "right" {
  \clef treble
              r4
              r8
  \relative c'{
               c16[ des ees fis g a] 
               c![ des ees fis g a] 
               c![ a g fis ees des]
               c![ a g fis ees des]
              }
              r4
              r8
              
  }

  \new Staff = "left" {
    \clef bass
  \relative c{
            <<{c16[ des ees fis g a]} \\ {c,,[ des ees fis g a]}>>
            c![ des ees fis g a]
             }

    \clef treble
  \relative c'{
            c![ cis d fis g aes]
            c![ aes g fis d cis]
              }
    
    \clef bass
  \relative c'{
            c![ aes g fis d cis]
            <<{c'[ aes g fis d cis]} \\ {c[ aes g fis d cis]}>>
            c1
             }

  }
>>

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
