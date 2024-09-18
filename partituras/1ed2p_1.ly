% Idea 1
\accidentalStyle forget
\new PianoStaff <<
  \new Staff = "right" {
  \clef treble
              r4
  \relative c'{c16[ cis fis g] 
               c![ cis fis g] 
               c![ g fis cis] 
               c![ g fis cis]}
  }
  \new Staff = "left" {
    \clef bass
  \relative c{<<{c[ cis fis g]} \\ {c,,[ cis fis g]}>>}
            c! cis fis g
            
    \clef treble
            e!'[ eis']
              
  }
>>