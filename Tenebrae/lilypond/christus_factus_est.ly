\header {
  tagline = ""
  composer = "Pietro A Yon"
}
\include "english.ly"
\include "lilypond-book-preamble.ly"
\include "header.ly"

global = {
  \key f \major
  \time 3/2
  \tempo "Lento"
}

sopMusic = \relative c' {
  \clef "treble"
  f1_\pp^\<( g2\!) | f1.^\> | f2^\<( g\!) f^\> | f1\! g2 | a( c f | e) d c-^^\< ~ c\! b4( a) b2 | c1. | \break
  c1.^\< | bf?1^\> bf2^\< | a-^\!( f^\< e\!) | d1. |
  % 1st or 2nd night
  e1.^\< | f1. | g1.\! | af1. | bf2 c df | \break
  c1. | c1.\fermata \bar "||" f,1^\<^\markup \italic { Tertia nocte additur: } g2 | f1\> f2 | f\<( g\! f) | f1.^\> | a2^\<( c) f\! | e(-^ d) c ~ c b4(-^ a-^ b2-^) | c1. | \break
  bf?2 bf bf | a( d) a | g1. | a1. | bf2^\< bf^\markup \italic "allarg." bf4 bf | a2\!( d) c | f( e d | c f, bf | a1 g2) | a1.^\fermata \bar "|."
}
% hiddenMusic = \relative c' {
%   \clef "treble"
%   f1. f1. f1 f2 f1 f2 f1.( f2) f f f1 f2 f1. f1. f1 f2 f1. f1 f2 f1. f1. f1. f1. f2 f2 f2 f1. f1
%   f2 | f1 f2 f1 f2 f1. f1. f1 f2 f1 f2 f1. f1. f2 f f f1 f2 f1. |
%   f1. f2 f f4 f f1 f2 f1.( f1. f1.) f1.
% }
sopWords = \lyricmode {
  \set fontSize = #0.5
  %\set vocalName = "2. "
  %\set shortVocalName = "2. "
  %Chri -- stus fa -- ctus est pro | no -- bis
  \repeat unfold 8 {\skip 2}
  o -- bé -- di -- ens |
  %us -- que ad | mor -- tem, o -- bé -- di -- ens || us -- que ad |
  \repeat unfold 12 {\skip 2}
  %mor -- tem. | Pro -- pter quod et | De -- us, |
  \repeat unfold 8 {\skip 2}
  ex -- al -- tá -- vit il -- lum, |
  %et de -- dit | il -- li | no -- men, | quod est su -- per | o -- mne | no -- men.
  \repeat unfold 15 {\skip 2}
}

altoMusic = \relative c' {
  \clef "treble"
  f1( e2) | d1. | d1 d2 | c1 c2 | f2( g f | g) f g | d1 d2 | e1. |
  f1. | d1 d2 | d1( cs2) | a1. |
  % 1st or 2nd night
  c?1. | c1. | ef1. | ef1. | ef2 ef f |
  f( e?4-^^\< d?-^ e2-^\!) | f1. \bar "||" f1 e2 | d1 d2 | d1. | c1. | f2( g) f | g( f) g | d1. | e1. |
  d2 d d | d( f) d | d1. | e1. | g2 d d4 d | d2( f) g | f1.( f1.)( | f2)( e4 d e2) | f1. \bar "|."
}

altoWords = \lyricmode {
  \set fontSize = #0.5
  Chri -- stus fa -- ctus est pro | no -- bis o -- bé -- di -- ens |
  us -- que ad | mor -- tem, o -- bé -- di -- ens || us -- que ad |
  mor -- tem. | Pro -- pter quod et | De -- us, | ex -- al -- tá -- vit | il -- lum, |
  et de -- dit | il -- li | no -- men, | quod est su -- per | o -- mne | no -- men.
}

tenorMusic = \relative c' {
  \clef bass
  a1^\pp( c2) | a1. | bf1 bf2 | a1 c2 | c1( a2 | c) a c | a( g) g | g1. |
  a1. | g1 g2 | f( a g) | f1. |
  % 1st or 2nd night
  g1. | af1. | bf1. | c1. | g2 af af |
  af( g1) | a?1. \bar "||" a1 c2 | a1 a2 | bf1. | a1. | c1 a2 | c( a) c | a( g1) | g1. |
  g2 g g | f( a) a | bf1( d2) | cs1. | d2 bf g4 g | a1 g2 | a1( bf2 | c)( a d | c1.) c1. \bar "|."
}

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -1.4)
  \override LyricHyphen.extra-offset = #'(0 . -1.4)
  \override LyricExtender.extra-offset = #'(0 . -1.4)
  \override StanzaNumber.extra-offset = #'(0 . -1.4)
}

raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}

tenorWords = \lyricmode {
  \set fontSize = #0.5
  Chri -- stus fa -- ctus est pro | no -- bis o -- bé -- di -- ens |
  \dropLyrics
  us -- que ad | mor -- tem,
  \raiseLyrics
  <<
        %\once \override LyricText.self-alignment-X = #RIGHT
        % \markup {\italic { \tiny{1a nocte: }} o } --
        { \set stanza = #"1a nocte:"
        o -- bé -- di -- ens || us -- que ad | mor -- tem. }
        \new Lyrics = "secondNight"
        \with { alignBelowContext = #"tenor" } {
          \set associatedVoice = "tenor"
          % \once \override LyricText.self-alignment-X = #RIGHT
          % \markup {\italic { \tiny{2a nocte additur: }} mor } --
          \set stanza = #"2a nocte:"
          mor -- tem au -- tem cru -- _  _  _  cis.
        }
  >>
  \dropLyrics
  Pro -- pter quod et | De -- us, | ex -- al -- tá -- vit | il -- lum, |
  \raiseLyrics
  et de -- dit | il -- li | no -- men, | quod est su -- per | o -- mne | no -- men.
}

bassMusic = \relative a {
  \clef bass
  f1( c2) | d1. | bf1 bf2 | f'1 e2 | f( e d | c) d e | f( g) g, | c1. |
  f1. | g1 g,2 | a1. | d1. |
  % 1st or 2nd night
  c1. | f1. | ef1. af1. | ef2 c bf |
  c1. | f1.\fermata \bar "||"  f1 c2 | d1 d2 | bf1. | f'1. | f2( e) d | c( d) e | f( g1) | c,1. |
  g'2 g g | d ~ d f | bf1. | a1. | g2 g g4 g | f1 e2 | d( c bf | a)( d g, | c1.) | <f f,>1.\fermata |
}

bassWords = \lyricmode {
  \set fontSize = #0.5
  Chri -- stus fa -- ctus est pro | no -- bis o -- bé -- di -- ens |
  us -- que ad | mor -- tem, o -- bé -- di -- ens || us -- que ad |
  mor -- tem. | Pro -- pter quod et | De -- us, | ex -- al -- tá -- vit | il -- lum, |
  et de -- dit | il -- li | no -- men, | quod est su -- per | o -- mne | no -- men.
}

%altoWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
%}

\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos"
    \new Staff = "women" <<
      \new Voice = "sopranos"{
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    %\new Lyrics = "altos"

    \new Lyrics = "tenor"
    \new Staff = "men" <<
      \new Voice = "tenor" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "bass" {
        \voiceTwo
        << \global \bassMusic >>
      }
    >>
    %\new Lyrics = "bass"

    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    %\context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "tenor" \lyricsto "tenor" \tenorWords
    %\context Lyrics = "bass" \lyricsto "bass" \bassWords
  >>
  \layout {
    \context {
      \Staff
    }
  }
  \midi { }
}

%\score {
%  \new Staff \with { \remove "Time_signature_engraver" } <<
%    \global
%    \new Voice = "chant" \chantMusic
%    \new Lyrics = "chant" \lyricsto chant \chantWords
%  >>
%}

