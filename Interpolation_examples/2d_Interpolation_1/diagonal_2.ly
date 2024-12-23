%% MIDI FORMAT:
\version "2.24.2"
\score {
\new PianoStaff <<
\cadenzaOn
\new Staff = "right" {
\clef treble

%scale 0_4

\clef treble
    c16 [ e g fis ais des' ]
    c' [ e' g' fis' ais' des'' ]
    c'' [ e'' g'' fis'' ais'' des''' ]
    c''' [ des''' ais'' fis'' g'' e'' ]
    c'' [ des'' ais' fis' g' e' ]
    c' [ des' ais fis g e ]

%scale 1_3

\clef treble
    c16 [ e g fis ais des' ]
    c' [ e' g' fis' ais' des'' ]
    c'' [ e'' g'' fis'' ais'' des''' ]
    c''' [ des''' ais'' fis'' g'' e'' ]
    c'' [ des'' ais' fis' g' e' ]
    c' [ des' ais fis g e ]

%scale 2_2

\clef treble
    c16 [ e g fis ais des' ]
    c' [ e' g' fis' ais' ees ]
    c'' [ e'' g'' fis'' ais'' cis''' ]
    c''' [ cis''' ais'' fis'' g'' e'' ]
    c'' [ ees ais' fis' g' e' ]
    c' [ des' ais fis g e ]

%scale 3_1

\clef treble
    c16 [ e ees, e ]
    c' [ g, gis e' b, ]
    c' [ aes ees e' e'' g gis' e' b ]
    c'' [ b e' gis' g e'' e' ees aes ]
    c' [ b, e' gis g, ]
    c' [ e ees, e ]

%scale 4_0

\clef treble
    c16 [ aes, ees, e ]
    c [ f gis e cis' ]
    c' [ aes a' e' ]
    c' [ cis'' gis' e' f'' ]
    c'' [ f'' e' gis' cis'' ]
    c' [ e' a' aes ]
    c' [ cis' e gis f ]
    c [ e ees, aes, ]

}
>>
\midi{}
}

%% PDF FORMAT:
% \version "2.24.2"
% \new PianoStaff <<
% \cadenzaOn
% \new Staff = "right" {

% %scale 0_4
% \clef treble
%     c16 [ e g fis ais des' ]
%     c' [ e' g' fis' ais' des'' ]
%     c'' [ e'' g'' fis'' ais'' des''' ]
%     c''' [ des''' ais'' fis'' g'' e'' ]
%     c'' [ des'' ais' fis' g' e' ]
%     c' [ des' ais fis g e ]
% }
% >>

% %scale 1_3
% \new PianoStaff <<
% \cadenzaOn
% \new Staff = "right" {
% \clef treble
%     c16 [ e g fis ais des' ]
%     c' [ e' g' fis' ais' des'' ]
%     c'' [ e'' g'' fis'' ais'' des''' ]
%     c''' [ des''' ais'' fis'' g'' e'' ]
%     c'' [ des'' ais' fis' g' e' ]
%     c' [ des' ais fis g e ]
% }
% >>

% %scale 2_2
% \new PianoStaff <<
% \cadenzaOn
% \new Staff = "right" {
% \clef treble
%     c16 [ e g fis ais des' ]
%     c' [ e' g' fis' ais' ees ]
%     c'' [ e'' g'' fis'' ais'' cis''' ]
%     c''' [ cis''' ais'' fis'' g'' e'' ]
%     c'' [ ees ais' fis' g' e' ]
%     c' [ des' ais fis g e ]
% }
% >>

% %scale 3_1
% \new PianoStaff <<
% \cadenzaOn
% \new Staff = "right" {
% \clef treble
%     c16 [ e ees, e ]
%     c' [ g, gis e' b, ]
%     c' [ aes ees e' e'' g gis' e' b ]
%     c'' [ b e' gis' g e'' e' ees aes ]
%     c' [ b, e' gis g, ]
%     c' [ e ees, e ]
% }
% >>
% %scale 4_0
% \new PianoStaff <<
% \cadenzaOn
% \new Staff = "right" {
% \clef treble
%     c16 [ aes, ees, e ]
%     c [ f gis e cis' ]
%     c' [ aes a' e' ]
%     c' [ cis'' gis' e' f'' ]
%     c'' [ f'' e' gis' cis'' ]
%     c' [ e' a' aes ]
%     c' [ cis' e gis f ]
%     c [ e ees, aes, ]
% }
% >>