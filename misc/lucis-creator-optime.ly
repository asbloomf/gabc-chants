\version "2.18.0"

\include "util.ly"

\header {
  composer="Tomás Luis de Victoria (c.1548-1611)"
  %opus="(-)"
  poet="1581a,  1600b"
  copyright=\markup{
    \fill-line {"Transcribed and edited by Nancho Alvarez" \typewriter "http://tomasluisdevictoria.org"}
  }
% tagline=""
}
\include "lilypond-book-preamble.ly"

\paper {
  %print-all-headers = ##t
  line-width = 6\in - 1.25\in
  indent = 0\in
  %system-system-spacing = #'((basic-distance . 10) (padding . 0))
  system-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -3)
       (stretchability . 100))
%  top-markup-spacing =
%    #'((basic-distance . 0)
%       (minimum-distance . 0)
%       (padding . 0)
%       (stretchability . 0))
  line-width = #(- line-width (* mm  3.000000))
%  ragged-last = ##t
  
}
#(set-global-staff-size 16) \paper{ #(define fonts (make-pango-font-tree "Garamond Premier Pro" "Garamond Premier Pro" "Garamond Premier Pro" (/ 16 18))) }
#(ly:set-option 'point-and-click #f)

italicas=\override LyricText.font-shape = #'italic
rectas=\override LyricText.font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
incipitwidth = 20

htitle="Lucis creator optime"
hcomposer="Victoria"


% \markup{\null \vspace #0 }

% \score {\transpose c c {
% <<
%          \new Voice = "canto" {
%                  \override Staff.TimeSignature.stencil = #'()
%                  \override Stem.transparent = ##t
%                  \set Score.timing = ##f
%                  \override NoteHead.style = #'neomensural         
%                  \clef "G_8" 
%                  \key a \minor
%                  \override LigatureBracket.padding = #1
%                  g4 \[a c'\] c' \[c' b\] \[a g\] \[c' d'\] c' \[b a g\] \bar "|"
%                  \[c' d'\] \[e' c'\] d' \[c' b a\] b b a g \bar "|"
%      g \[a c'\] c' \[c' b\] \[a g\] c' d' \[b a g\] \bar "|"
%      \[c' d'\] \[e' c'\] d' \[c' b a\] b b a g \bar "||"
%          }
%          \new Lyrics \lyricsto "canto" {
%            \set stanza = "1."
%            Lu -- cis __ _ cre -- a -- _ tor __ _ o -- _ pti -- me __ _ _ 
%            Lu -- _ cem __ _ di -- e -- _ _ rum pro -- fer -- ens
%            Pri -- mor -- _ di -- is __ _ lu -- _ cis no -- væ __ _ _ 
%            Mun -- _ di __ _ pa -- rans __ _ _ o -- ri -- gi -- nem.
%          }
%          \new Lyrics \lyricsto "canto" {
%            \set stanza = "3."
%           Ne mens __ _ gra -- va -- _ ta __ _ cri -- _ mi -- ne __ _ _
%           Vi -- _ tæ __ _ sit ex -- _ _ sul mu -- ne -- re
%           Dum nil __ _ pe -- ren -- _ ne __ _ co -- gi -- tat __ _ _ 
%           Se -- _ se -- _ que cul -- _ _ pis il -- li -- gat.
%          }
%          \new Lyrics \lyricsto "canto" {
%            \set stanza = "5."
%           Præs -- ta __ _ Pa -- ter __ _ \italicas pi -- _ is -- _ si -- me __ _ _ 
%           Pa -- _ tri -- _ que com -- _ _ par u -- ni -- ce
%           Cum Spi -- _ ri -- tu __ _ Pa -- _ ra -- cli -- to __ _ _ 
%           Re -- _ gnans __ _ per om -- _ _ ne sæ -- cu -- lum.
%          }
% >>
%         }%transpose

% \layout {
%         %line-width=16\cm 
%         indent=1.0\cm
%         %ragged-right = ##f
% }
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5


global={\key c \major \time 2/2  \skip 1*35 \bar "||" \pageBreak
          \skip 1*35 \bar "|."

}

cantus={
  g'1 |
  \[a'2 c'' ~ \] |
  c''4 c'' b' g' |
  b'8 c'' d'' b' c''4 a' |
%5
  g'1 |
  r2 r4 g' |
  a'4. b'8 c''4 c'' |
  c''2 a'4 c'' ~ |
  c'' b'8 a' b'4 a' ~ |
%10
  a'8 g' g'2 fis'4 |
  g'2 r4 \[g' ~ |
  g' a'2\] b'4 ~ |
  b' g' c''2 |
  b'4 a'4. g'8 g'4 ~ |
%15
  g' fis' g' a' ~ |
  a'8 g' g'2 fis'4 |
  g'1 ~ |
  g' ~ |
  g' |
%20
  r2 r4 g' |
  e' c' e'4. f'8 |
  g'4 a'2 g'8 f' |
  g'4 a' d' d'' ~ |
  d'' c''2 b'4 |
%25
  a' c'' b' a' ~ |
  a'8 g' g'2 fis'4 |
  g'2 \[b' |
  c''\] a'4 b' ~ |
  \set Staff.autoBeaming = ##f
  b'8 b' g'4 a'4. g'8 |
  \set Staff.autoBeaming = ##t
%30
  f'4 e' g' d'' ~ |
  d'' b' c'' a' |
  g' d'8[ e' f' g'] a'[ f'] |
  g'4 a'4. g'8 g'4 ~ |
  g' fis'8 e' fis'4 fis' |
%35
  g'\breve*1/2 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  g'1 |
%40
  \[a'2 c'' ~ \] |
  c''4 c'' \[c''2 |
  b'\] \[a' |
  g'\] \[c'' |
  d''4.\] c''8 b'4 a' ~ |
%45
  a'8 g' g'2 fis'4 |
  g'2 r |
  R1*4/4 |
  \[c''2 d''\] |
  e'' c'' |
%50
  d''2. c''4 |
  b'2 a' |
  g'2. fis'4 |
  g'1 |
  R1*4/4 |
%55
  R1*4/4 |
  g'1 |
  \[a'2 c'' ~ \] |
  c''4 c'' c''2 ~ |
  c'' \[b' |
%60
  a'\] g' ~ |
  g' a' |
  g'1 |
  R1*4/4 |
  R1*4/4 |
%65
  \[c''2 d''\] |
  e'' c'' |
  d'' c''4 b' |
  a'2 g'4 a' ~ |
  a'8 g' g'2 fis'4 |
%70
  g'\breve*1/2
}

altus={
  R1*4/4 |
  r2 c' |
  e'4 f' g'4. f'8 |
  d'4 g' e' f' ~ |
%5
  f' e'8 d' e'4. f'8 |
  g'4 f'8 e' d'2 |
  r4 c' e'4. f'8 |
  g'4 a' f' e' |
  g'2. f'4 |
%10
  e' d' c' a |
  b2 \[d' |
  e'\] f'4 d' |
  g'2 e'4 g' ~ |
  g' f' e' d' ~ |
%15
  d'8 c' d'4 e'2 ~ |
  e' d' |
  d' r4 c' |
  b g b4. c'8 |
  d'4 e'2 d'8 c' |
%20
  d'4 e' d' d' |
  c' e'2 g'4 ~ |
  g' f' e'2 |
  r r4 g' |
  f' f' e' d' |
%25
  f'4. e'8 g'4 f' |
  e'2 r |
  r4 \[d'2 e'4 ~ \] |
  e' c' f'8 e' d' c' |
  b4 c' a f8 g |
%30
  a b c'2 b8 a |
  b g g'2 f'8 e' |
  \[d'1 |
  e'2.\] c'4 |
  d'1 ~ |
%35
  d'\breve*1/2 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  r4 g' e' g' |
%40
  f' d' e' f' ~ |
  f' e'8 d' e'4 f' |
  g'2 r4 c' |
  e'4. f'8 g'4 g' |
  g'2. f'4 |
%45
  d' e' d'2 |
  r4 g g a |
  b2 g4 g' ~ |
  g' f'8 e' f'4 f' |
  e'1 |
%50
  r4 d' b c' |
  d'2. a4 |
   c'8[ b]  b[ a16 g] a4 a |
  b2 r4 g |
  a4. b8 c'4 c' |
%55
  c'2 a |
  b2. c'4 |
  a8 b c' d' e'2 |
  r r4 g' |
  e' f' g'2 |
%60
  e'4 f'2 e'8 d' |
  e' f' g'2 fis'4 |
  g' d'2 e'4 ~ |
  e' c' d'2 |
  b4 c'4. f8 f'4 ~ |
%65
  f' e' d'2 |
  r4 c'2 f'4 ~ |
  f' f' e'2 |
  c'4 d' \[e'2 | 
  d'2.\] d'4 |
%70
  d'\breve*1/2
}

tenor={
  R1*4/4 |
  R1*4/4 |
  r2 g ~ |
  g \[a |
%5
  c'2.\] c'4 |
  \[c'2 b\] |
  \[a g\] |
  \[c'1 |
  d'\] |
%10
  \[b2 a\] |
  g1 |
  \[c'2 d'\] |
  e' c' |
  d' c'4 b |
%15
  a2 c' ~ |
  c' a |
  g1 ~ |
  g |
  R1*4/4 |
%20
  g1 |
  \[a2 c' ~ \] |
  c'4 c' c'2 ~ |
  c' b |
  \[a g\] |
%25
  \[c' d'\] |
  \[b a\] |
  g r |
  \[c' d'\] |
  e' c' ~ |
%30
  c' d' ~ |
  d' c' |
  b a |
  b4 c' b a8 g |
  a2. a4 |
%35
  g\breve*1/2 |
  g1 |
  \[a2 c' ~ \] |
  c'4 c' c'2 |
  b4 c'4. d'8 e'4 |
%40
  d'4. c'16 b a4. b8 |
  c'2. c'4 |
  d' g a4. b8 |
  c'4 c' c'2 ~ |
  c'4 b g a |
%45
  b c' a2 |
  g r4 c' |
  d' d' e'2 |
  c'4 a2 b4 |
  c' g g a |
%50
  b4.  a8[ g f] e4 |
  d g2 fis4 |
  g2 r4 d' ~ |
  d' b g c' ~ |
  c'8 b a4 g a ~ |
%55
  a8 g g2 fis4 |
  g2 r4 c' ~ |
  c' a g a |
  e  f8[ g a b] c'4 ~ |
  c' c' d' g |
%60
  a f c'4. b8 |
  c' d' e'4 c' d' |
  g2 b |
  c' a4 b ~ |
  b g a4. g8 |
%65
  a b c'2 b4 |
  c' g a2 |
  f4 a2 gis4 |
  a4. b8 c'2 |
  b4 a8 g a4 a |
%70
  g\breve*1/2
}

bassus={
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
  R1*4/4 |
%5
  r2 c |
  e4 f g4. f8 |
  d4 f c4. d8 |
  e4 f4. g8 a4 |
  g2. d4 |
%10
  e b, c d |
  g,1 |
  R1*4/4 |
  R1*4/4 |
  r2 r4 g, |
%15
  d d c a, |
  c2 d |
  g,4 g e c |
  e4. f8 g4 g, |
  b, c8[ d e f g a] |
%20
  b g c'2 b4 |
  c'2 r4 c |
  e f c4. d8 |
  e4 f g4. f8 |
  d4 f c g |
%25
  f a g d |
  e4. d8 c4 d |
  g,2 \[g |
  a\] f4 g ~ |
  \set Staff.autoBeaming = ##f
  g8 g e4 f4. e8 |
  \set Staff.autoBeaming = ##t
%30
  f4 a g2 |
  r4 g e f |
  g2 d4 f |
  e c \[e2 |
  d2.\] d4 |
%35
  g,\breve*1/2 |
  r4 g e g |
  f d e f ~ |
  f e8 d e4 f |
  g8 f e d c2 |
%40
  R1*4/4 |
  r4 c' a a |
  g e f4. e8 |
  c4. d8 e4 c |
  g2 r |
%45
  r4 c d d |
  e2 c |
  \[g c4.\] d8 |
  e4 f d d |
  c1 |
%50
  r4 g, g, a, |
  b, g, \[d2 |
  e\] d |
  g,4 g e c |
  f2 e4 f ~ |
%55
  f8 e c4 d d |
  g, g e c |
  f2 c4 c' ~ |
  c'8 b a g f4 e |
  a a g2 |
%60
  R1*4/4 |
  R1*4/4 |
  r2 g |
  a f4 g ~ |
  g e f4. e8 |
%65
  f g a4 f g |
  c c f2 |
  d \[e |
  f\] c |
  d2. d4 |
%70
  g,\breve*1/2
}

textocantus=\lyricmode{
\set stanza = "2."
Qui ma -- _ _ ne iun -- ctum ve -- _ _ _ _ spe -- ri
qui ma -- _ _ ne iun -- ctum ve -- _ _ _ _ _ _ _ _ spe -- ri
Di -- _ _ em _ vo -- ca -- ri præ -- _ _ _ _ _ _ _ _ _ ci -- pis: _ _ 
Te -- trum cha -- os __ _ _ il -- la -- _ _ bi -- tur,
te -- _ trum cha -- os il -- la -- _ _ _ _ bi -- tur,
Au -- _ di pre -- _ ces cum fle -- _ _ ti -- bus,
au -- _ di pre -- ces cum fle -- _ _ _ _ _ _ _ _ _ _ _ _ _ ti -- bus.
\set stanza = "4."
Cæ -- lo -- _ _ rum pul -- _ set __ _
in -- _ _ _ _ _ _ _ ti -- mum
vi -- _ ta -- le tol -- _ _ lat præ -- mi -- um
Vi -- te -- _ _ mus o -- _ mne __ _ no -- _ xi -- um
Pur -- _ ge -- mus o -- _ _ _ mne pes -- _ _ _ si -- mum.
}

textoaltus=\lyricmode{
\set stanza = "2."
Qui ma -- ne iun -- _ _ ctum ve -- _ _ _ _ _ _ _ spe -- _ ri
qui ma -- _ _ ne iun -- ctum ve -- _ _ _ _ spe -- ri, 
Di -- _ em vo -- ca -- ri præ -- _ _ _ _ _ _ _ _ _ ci -- pis:
Te -- trum cha -- os __ _ _ il -- la -- _ _ _ _ bi -- tur,
il -- la -- _ bi -- tur
te -- trum cha -- os il -- la -- _ _ bi -- tur
Au -- _ _ di pre -- _ _ _ _ ces cum fle -- _ _ _ _ _ _ _ _ _ _ _ _ _ ti -- bus. _
\set stanza = "4."
Cæ -- lo -- rum pul -- set in -- _ _ _ _ _ ti -- mum
cæ -- lo -- _ _ rum pul -- set in -- ti -- mum
Vi -- ta -- le tol -- lat præ -- _ _ _ _ mi -- um
\italicas vi -- ta -- le tol -- lat præ -- _ _ _ _ _ mi -- um \rectas
Vi -- te -- _ _ mus o -- mne no -- xi -- um __ _ _ _ _ 
vi -- te -- mus o -- mne no -- _ _ _ _ _ xi -- um,
Pur -- ge -- _ mus o -- mne pes -- _ _ _ si -- mum
pur -- ge -- _ mus o -- mne __ _ pes -- _ si -- mum.
}

textotenor=\lyricmode{
\set stanza = "2."
Qui _ ma -- _ ne iun -- _ ctum __ _
ve -- _ spe -- _ ri,
Di -- _ em vo -- ca -- _ _ ri præ -- _ ci -- pis: _
Te -- trum __ _ _ cha -- os _ il -- la -- _ _ _ bi -- _ tur
Au -- _ _ di _ pre -- _ ces cum fle -- _ _ _ _ _ _ ti -- bus.
\set stanza = "4."
Cæ -- lo -- _ _ rum pul -- set in -- _ _ _ _ _ _ _ _ ti -- mum,
cæ -- lo -- _ _ rum pul -- _ set in -- _ _ _ ti -- mum
Vi -- ta -- le tol -- lat præ -- mi -- um,
vi -- ta -- le tol -- _ _ _ _ lat præ -- mi -- um
Vi -- _ te -- mus o -- _ _ _ mne no -- _ _ _ xi -- um
vi -- _ te -- mus o -- mne no -- _ _ _ _ _ xi -- um,
Pur -- ge -- mus o -- mne __ _ _ _ pes -- si -- mum,
\italicas pur -- ge -- mus o -- _ mne pes -- _ _ _ _ si -- mum, \rectas
pur -- ge -- mus o -- mne pes -- _ _ _ _ _ _ si -- mum.
}

textobassus=\lyricmode{
\set stanza = "2."
Qui ma -- ne iun -- _ _ ctum ve -- _ _ _ _ _ _ _ _ _ _ spe -- ri
Di -- em vo -- ca -- ri præ -- ci -- pis:
Te -- trum cha -- os __ _ _ il -- la -- _ _ _ _ _ _ _ _ _ bi -- tur
te -- trum cha -- os __ _ _ il -- la -- _ _ bi -- tur,
te -- trum cha -- os il -- la -- _ _ bi -- tur,
Au -- _ di pre -- _ ces cum fle -- _ _ ti -- bus
au -- di __ _ pre -- ces cum fle -- _ _ _ ti -- bus.
\set stanza = "4."
Cæ -- lo -- rum pul -- set in -- _ _ _ _ _ ti -- mum __ _ _ _ _ 
cæ -- lo -- rum pul -- set in -- _ _ _ _ ti -- mum
Vi -- ta -- le tol -- lat præ -- _ _ _ _ _ mi -- um
vi -- ta -- le tol -- lat præ -- _ mi -- um,
Vi -- te -- mus o -- mne no -- _ _ _ _ xi -- um,
vi -- te -- mus o -- mne no -- _ _ _ _ _ _ _ xi -- um
Pur -- ge -- mus o -- _ mne pes -- _ _ _ _ _ si -- mum,
pur -- ge -- mus o -- _ mne pes -- si -- mum.
}


incipitcantus=\markup{
  \score{
    { 
    \set Staff.instrumentName="Cantus "
    \override NoteHead.style = #'neomensural
    \override Rest.style = #'neomensural
    \override Staff.TimeSignature.style = #'neomensural
    \cadenzaOn 
    \clef "petrucci-c1"
    \key c \major
    \time 2/2
    g'\breve
    } 
  \layout {
    \context {\Voice
      \remove Ligature_bracket_engraver
      \consists Mensural_ligature_engraver
    }
    line-width=\incipitwidth
    indent = 0
  }
  }
}

incipitaltus=\markup{
  \score{
    { 
    \set Staff.instrumentName="Altus    "
    \override NoteHead.style = #'neomensural 
    \override Rest.style = #'neomensural
    \override Staff.TimeSignature.style = #'neomensural
    \cadenzaOn 
    \clef "petrucci-c3"
    \key c \major
    \time 2/2
    c'1
    } 
  \layout {
    \context {\Voice
      \remove Ligature_bracket_engraver
      \consists Mensural_ligature_engraver
    }
    line-width=\incipitwidth
    indent = 0
  }
  }
}


incipittenor=\markup{
  \score{
    { 
    \set Staff.instrumentName="Tenor   "
    \override NoteHead.style = #'neomensural 
    \override Rest.style = #'neomensural
    \override Staff.TimeSignature.style = #'neomensural
    \cadenzaOn 
    \clef "petrucci-c4"
    \key c \major
    \time 2/2
    g\breve
    } 
  \layout {
    \context {\Voice
      \remove Ligature_bracket_engraver
      \consists Mensural_ligature_engraver
    }
    line-width=\incipitwidth
    indent=0
  }
  }
}

incipitbassus=\markup{
  \score{
    { 
    \set Staff.instrumentName="Bassus "
    \override NoteHead.style = #'neomensural 
    \override Rest.style = #'neomensural
    \override Staff.TimeSignature.style = #'neomensural
    \cadenzaOn 
    \clef "petrucci-f4"
    \key c \major
    \time 2/2
    c1
    } 
  \layout {
    \context {\Voice
      \remove Ligature_bracket_engraver
      \consists Mensural_ligature_engraver
    }
    line-width=\incipitwidth
    indent = 0
  }
  }
}




\score {\transpose c' c'{
\new ChoirStaff<<

  \new Staff <<\global
  \new Voice="v1" {
    \clef "treble"
    \cantus }
  \new Lyrics \lyricsto "v1" {\textocantus }
  >>
  
  \new Staff << \global
  \new Voice="v2" {
    \clef "treble" 
    \altus}
  \new Lyrics \lyricsto "v2" {\textoaltus }
  >>

  
  \new Staff <<\global
  \new Voice="v3" {
    \clef "G_8"
    \tenor }
  \new Lyrics \lyricsto "v3" {\textotenor }
  >>
  
  \new Staff <<\global
  \new Voice="v4" {
    \clef "bass" 
    \bassus }
  \new Lyrics \lyricsto "v4" {\textobassus }
  >>
  
>>

  }%transpose

\layout{
  \context {\Lyrics 
    \override VerticalAxisGroup.staff-affinity = #UP
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
    \override LyricText.font-size = #1.2
    \override LyricHyphen.minimum-distance = #0.5
  }
  \context {\Score 
    tempoHideNote = ##t
    \override BarNumber.padding = #2 
  }
  \context {\Voice 
    melismaBusyProperties = #'()
    %autoBeaming = ##f
  }
  \context {\Staff 
                %\RemoveEmptyStaves
                %\override VerticalAxisGroup.remove-first = ##t
    \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 11) (minimum-distance . 0) (padding . 1))
    \consists Ambitus_engraver 
    \override LigatureBracket.padding = #1
  }
}

%\midi { \mtempo }

}
