\header {
  tagline = ""
  composer = "Tomas Luis de Victoria (1548-1611)"
}
\include "english.ly"
\include "lilypond-book-preamble.ly"
\include "header.ly"

global = { \key d \minor \time 4/4 }

TenOneRep = 
{
  R1 | r2  g~ | g f | ef d4 d~( | d c8 bf c4) c | d2 r4 d~ | d d d d | ef2( d) | d1\fermata \bar "||"

}

TenTwoRep = 
{
  r2 d~ | d c | d a | c( bf4 a | g2.) g4 | a1 | bf4. bf8 bf4 a | c2( a) | b1\fermata \bar "||"
}

BassOneRep = 
{
  bf1 | a2 g | a r4 a4~( | a8 g g2) fs4 | g2 r4 g~ | g fs fs2 | g4. g8 g4 fs | g2.( fs4) | g1\fermata \bar "||"
}

BassTwoRep = % this part excludes the first bar, because of octave problem 
{
  f2 ef | d1 | c2( d | ef2.) ef4 | d1 | g,4. g8 g4 d' | c2( d) | g,1\fermata \bar "||"
}

wordsA = \lyricmode
{
  \set fontSize = #0.5
  O vos om -- nes, qui tran -- sí -- tis per vi -- am, 
}

wordsB = \lyricmode
{
  At -- tén -- di -- te, et vi -- dé -- te 
}

wordsC = \lyricmode
{
  si est do -- lor sí -- mi -- lis 
}

wordsD = \lyricmode
{
  si -- cut do -- lor me -- us.
}
wordsE = \lyricmode
{
  At -- tén -- di -- te, u -- ni -- vér -- si pó -- pu -- li, 
}

wordsF = \lyricmode
{
  et vi -- dé -- te 
}

wordsG = \lyricmode
{
  do -- ló -- rem me -- um, do -- ló -- rem me -- um.
}

TenorOneNotes = \relative c'
{
  \global
  r2 d~ | d d~ | d ef | d1 | 
  r4\! d2 d4 | d2 d4 d | c1 | b2\fermata r \bar "||" \break 
  R1 | R | R | R | r4 d2 d4 | g1 | fs1 \bar "||" \break 
%  \mark \markup { \musicglyph #"scripts.segno" }
  \TenOneRep 
%    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
%    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
%    \override Score . RehearsalMark #'font-shape = #'italic
%    \override Score.RehearsalMark #'font-size = #0.5
%    \mark "Fine"
  d1 | f2. e4 | e2 r4 f~ | f f f g | 
  e( f4. e8 d4~ | d) cs  d a~ | a b c2 | a r4 g | 
  d'2. c4 | bf a r d | g2. f4 | ef1 | d1\fermata \bar "||" \break 
%  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
%    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
%    \override Score . RehearsalMark #'font-shape = #'italic
%    \override Score.RehearsalMark #'font-size = #0.5
%    \mark "D.S. al Fine"
  \TenOneRep 
}

TenorOneWords = \lyricmode 
{
  \wordsA et vi -- dé -- te 
  \wordsC \wordsD
  \wordsE \wordsF \wordsG 
  \wordsC \wordsD
}

TenorTwoNotes = \relative c'
{
  \global
  g1 | bf2.( a8 g | a4 b!) c2 | a1 | 
  bf2. bf4 | bf2 a4 bf | a8( g g2 fs4) | g2 r \bar "||" 
  r2 d'~ | d f~ | f4 e e2 | d2. c4 | d4.( e8 f4 d~ | d c8 bf c2) | d1 \bar "||"
  \TenTwoRep
  r2 a2~ | a c~ | c4 c c2 | d4. d8 d4 d | 
  c2( d) | e f | d e | f d | 
  r4 d g2~ | g4 f ef( d~ | d c) d a | c g c2~( | c4 b) b2\fermata \bar "||"
  \TenTwoRep
}

TenorTwoWords = \lyricmode 
{
  \wordsA \wordsB
  \wordsC \wordsD
  \wordsE \wordsF \wordsG
  \wordsC \wordsD
}

BassOneNotes = \relative c
{
  \global
  r2 d~ | d f~ | f g~( | g4 fs) fs2 | 
  r4 g2 g4 | g2 f4 d | ef4.(  d8 c2) | d2 r \bar "||" 
  g1 | bf2. a4 | a2. g4~ | g f g( a | bf2 a4 bf~ | bf8 a g f g2) | a1 \bar "||"
  \BassOneRep
  r2 d~ | d a'~ | a4 a a2 | bf4. bf8 bf4 g | 
  a2( bf4. a8 | g4) a d,2~ | d r | r4 d g2~ | 
  g4 f ef2 | d4 d g4.( f8 | ef2) d | c1 | g'\fermata \bar "||"
  \BassOneRep
}

BassOneWords = \lyricmode 
{
  \wordsA \wordsB 
  \wordsC sí -- mi -- lis \wordsD 
  \wordsE \wordsG 
  \wordsC sí -- mi -- lis \wordsD 
}

BassTwoNotes = \relative c
{
  \global
  r2 g~ | g d'~ | d c | d1 | 
  r4 g,2 g4 | g2 d'4 bf | c4.( bf8 a2) | g r \bar "||" 
  r2 g~ | g d'~ | d4 c c2 | bf2. a4 | g8( a bf c d4 bf | ef1) | d\bar "||"
  g1 | \BassTwoRep 
  R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | \bar "||"
  g'1 | \BassTwoRep
}

BassTwoWords = \lyricmode 
{
  \wordsA \wordsB 
  \wordsC \wordsD 
  \wordsC \wordsD 
}

\score {
  \new ChoirStaff <<
    \new Staff = "Tenor1" << 
      \clef "G_8"
      \new Voice = "T1" { \TenorOneNotes } 
      \new Lyrics \lyricsto "T1" { \TenorOneWords } 
    >>

    \new Staff = "Tenor2" << 
      \clef "G_8" 
      \new Voice = "T2" { \TenorTwoNotes } 
      \new Lyrics \lyricsto "T2" { \TenorTwoWords } 
    >>

    \new Staff = "Tenor2" << 
      \clef bass
      \new Voice = "B1" { \BassOneNotes } 
      \new Lyrics \lyricsto "B1" { \BassOneWords } 
    >>

    \new Staff = "BassTwo" << 
      \clef bass
      \new Voice = "B2" { \BassTwoNotes } 
      \new Lyrics \lyricsto "B2" { \BassTwoWords } 
    >>
  >>
}

%\score {
%  \new Staff \with { \remove "Time_signature_engraver" } <<
%    \global
%    \new Voice = "chant" \chantMusic
%    \new Lyrics = "chant" \lyricsto chant \chantWords
%  >>
%}

