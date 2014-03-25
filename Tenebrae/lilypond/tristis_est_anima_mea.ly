\header {
  tagline = ""
  composer = "Giovanni Battista Martini (1706-1784)"
}
\include "english.ly"
\include "lilypond-book-preamble.ly"
\include "header.ly"

global = {
  \key c \major
  \time 4/4
}

sopMusic = \relative c' {
  \clef "treble_8"
  b2 b4 b | c e8 e e4( d) | e e2 d4 ~ | d4 c c( b) | c2 e4. e8 | f4 f d d | \break
  e4. d8 c2 | d4(e) d d | r2 e4 d | e d8 c d4 d | r2 c4 b | c b8 a b2 | \break
  r4 e8 e c8. c16 f4 | d e8 e d8. d16 d4 | c2\fermata
  \mark \markup { \musicglyph #"scripts.segno" }
  e2 | d8 c d b c2 | b4 e4.( a,8) d4 ~ | \break
  d c c( b) | c e e d8( c) | c4 b r e8 e | e4 d8 c b4( c | b2) a\fermata \bar "||"
    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "Fine" \break
}
sopWords = \lyricmode {
  \set fontSize = #0.5
  %\set vocalName = "2. "
  %\set shortVocalName = "2. "
  Tri -- stis est | á -- ni -- ma me -- a us -- que __ ad mor -- tem_: su -- sti -- né -- te hic, et | vi -- gi -- lá -- te __ me -- cum_: nunc vi -- dé -- bi -- tis tur -- bam, quæ cir -- cúm -- da -- bit me, quæ cir -- cúm -- da -- bit | me, quæ cir -- cúm -- da -- bit -- me_: Vos fu -- gam ca -- pi -- é -- tis, et __ e -- go va -- dam, et e -- go __ | va -- dam im -- mo -- lá -- ri pro vo -- bis.
}

altoMusic = \relative c' {
  \clef "treble_8"
  gs2 gs4 gs | a c8 c a2 | gs a | g?4 g f2 | e c'4. c8 | d4 d b b |
  c4. b8 c2 | b4( c) b b | r2 c4 b | c b8 a b4 b | r2 a4 gs | a gs8 fs gs2 |
  r4 c8 c a8. a16 d4 | b c8 c c8. b16 b4 | c2\fermata r2 | R1 | r2 a |
  g8 f g e f2 | e4 c' c b8( a) | a4 gs r c8 c | c4 b8 a gs4( a) ~ | a( gs) a2\fermata \bar "||" 
  \cadenzaOn
  \stemOff
  s4 c4( b) c( d) d d f e d e ~ e \bar "|"
  s4 d\breve e4 d c c b ~ b d ~ d
  s8 \cadenzaOff \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "D.S. al Fine"
  \stemOn
  s8 e2
}

altoWords = \lyricmode {
  \set fontSize = #0.5
  Tri -- stis est | á -- ni -- ma me -- a us -- que ad mor -- tem_: su -- sti -- né -- te hic, et | vi -- gi -- lá -- te __ me -- cum_: nunc vi -- dé -- bi -- tis tur -- bam, quæ cir -- cúm -- da -- bit me, quæ cir -- cúm -- da -- bit | me, quæ cir -- cúm -- da -- bit -- me_:  Vos fu -- gam ca -- pi -- é -- tis, et e -- go __ va -- dam im -- mo -- lá -- ri pro vo -- bis.
  Ec -- ce ap -- pro -- pín -- quant ho -- ra
  \once \override LyricText #'self-alignment-X = #LEFT
  et_Fílius_hóminis_tradétur_in ma -- nus pec -- ca -- tó -- rum.
  Vos
}

bassMusic = \relative a {
  \clef bass
  e2 e4 e | c a8 a f'2 | e f | e4 e d2 | c r | f4. f8 g4 g |
  e e f4. e8 | d4 c g' g | c b c g8 g | c,2 g' | a4 gs a e8 e | a,2( e') |
  r4 c8 c f8. f16 d4 | g c,8 c g'8. g16 g,4 | c2\fermata r2 | r2 a' | g8 f g e f2 |
  e4 e8 c d2 | c4 c d4. d8 | e4 e c2 | d e4 a,8 a | e'2 a,\fermata \bar "||"
}

bassWords = \lyricmode {
  \set fontSize = #0.5
  Tri -- stis est | á -- ni -- ma me -- a us -- que ad mor -- tem_: su -- sti -- né -- te | hic, et vi -- gi -- lá -- te me -- cum_: | nunc vi -- dé --  bi -- tis tur -- bam, | quæ cir -- cúm -- da -- bit me, __ quæ cir -- cúm -- da -- bit | me, quæ cir -- cúm -- da -- bit -- me_:  Vos fu -- gam ca -- pi -- é -- tis, ca -- pi -- é -- tis, et e -- go | va -- dam im -- mo -- lá -- ri pro | vo -- bis.
}

chantMusic = \relative c' {
  \clef "treble_8"
  \cadenzaOn
  \stemOff
  c4( b) c( d) d d f e d e ~ e s8 \bar "|"
  s8 d\breve e4 d c c b ~ b d ~ d
  s8 \cadenzaOff \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "D.S. al Fine"
  \stemOn
  s8 e2
}


chantWords = \lyricmode {
  Ec -- ce ap -- pro -- pín -- quant ho -- ra
  \once \override LyricText #'self-alignment-X = #LEFT
  et_Fílius_hóminis_tradétur_in ma -- nus pec -- ca -- tó -- rum.
  Vos
}

%altoWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
%}

\score {
  \new ChoirStaff <<
%    \new Lyrics = "sopranos"
    \new Staff = "women" <<
      \new Voice = "sopranos"{
%        \voiceOne
        << \global \sopMusic >>
      }
%      \new Voice = "altos" {
%        \voiceTwo
%        << \global \altoMusic >>
%      }
    >>
    \new Lyrics = "sopranos"

    \new Staff = "women2" <<
      \new Voice = "altos" {
%        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    
    \new Staff = "men" <<
      %\new Lyrics = "bass"
      \new Voice = "bass" {
%        \voiceOne
        << \global \bassMusic >>
      }
    >>
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "bass" \lyricsto "bass" \bassWords
  >>
  \layout {
    \context {
      \Staff
    }
  }
}

%\score {
%  \new Staff \with { \remove "Time_signature_engraver" } <<
%    \global
%    \new Voice = "chant" \chantMusic
%    \new Lyrics = "chant" \lyricsto chant \chantWords
%  >>
%}
