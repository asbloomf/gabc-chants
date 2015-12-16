\version "2.14.2"
\include "util.ly"
ss=\once \set suggestAccidentals = ##t

\header {
  %title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \abs-fontsize #18 "Alma Redemptoris Mater"}}
  composer = \markup"Francesco Soriano (c. 1549–1621)"
  tagline = ""
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
#(set-global-staff-size 18) \paper{ #(define fonts (make-pango-font-tree "Garamond Premier Pro" "Garamond Premier Pro" "Garamond Premier Pro" (/ 18 20))) }
global = {
  \key f \major
  \time 4/2
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

incipit = {
  \partial 4*5 d,4( c d) g,2
}
incipitCue = {
  \new CueVoice {
    \incipit
  }
}

sopMusic = \relative c'' {
	\relative c''' { \incipitCue }
  d\breve | c1( bes) | a\breve | c\breve | c2 c f f | d2.( e4 f2) c |
  d1 r2 bes ~ | bes4( c d2) c bes | c4( bes bes1 a2) | bes d1 c2 | bes a g( a ~ a4 g g1 fis2) |
  g g bes c | d2.( c4 d e f2) | f d2. d4 c2 | bes a bes1 | a\breve | r\breve

  % page 2

  r2 c c c ~ c bes a1 | a r2 a | b1 c2 c | cis1 d | d2 d1 c?2 | c c2.( bes4 a2) |
  g a1( bes2 ~ bes4 a g1 fis2)  | g b1 b2 | c1 d2 f ~ f c d( c4 bes | a2) d c1 |
  a\breve | r1 c | b\breve | r2 d1 d2 | d1 d2 d | e2. f4 d2 c | bes2. bes4 a1 ~

  % page 3

  a2 b c a ~ a4( g) g1( \ss fis2)  | g\breve \bar"||" bes\breve | a1 b | c1. c2 | c\breve | c1 c |
  bes( a) | g( a) | bes( c) | bes( a) | g2 bes a b | c c d2. d4 |
  d2 c b1 | \ss b r | r2 d c1 | b2 b c c | bes?1 a2 g | a4( g g1 fis2) | g\breve
 \bar"|."
}
sopWords = \lyricmode {
  Re -- gi -- na, ma -- ter mi -- se -- ri -- cor -- di --
  æ, vi -- ta, dul -- ce -- do, et spes no -- stra sal --
  ve. Ad te cla -- ma -- mus e -- xu -- les fi -- lii E -- væ.

  Ad te su -- spi -- ra -- mus ge -- men -- tes et flen -- tes in hac la -- cry -- ma --
  rum val -- le. E -- ia er -- go ad -- vo -- ca -- ta no --
  stra, no -- stra, il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los __

  ad nos con -- ver -- te. Et Je -- sum be -- ne -- di -- ctum fru --
  ctum __ ven -- tris __ tu -- i, no -- bis post hoc ex -- i -- li --
  um o -- sten -- de. O pi -- a, O dul -- cis Vir -- go, Ma -- ri -- a.
}

altoMusic = \relative c'' {
  \relative c''' { \incipitCue }
  bes\breve | a1( g) | fis\breve | g | a1. a2 | bes1 a2 g2 ~
  g fis g1 | r2 f4.( g8 a2) d,4 d | g1( f) | f f | d ees2. ees4 | d\breve
  d2 d g f | bes2.( a4 g2 a) | bes bes2. bes4 a2 | g fis g1 | d f2 e | d a' f g |

  % page 2

  a2 a a1 | g2 g e1 | fis r2 fis | g1 g2 g | a1 a2 a | a1 g4( f e f | g e a2) g2 f ~
  f4( e e d8[ e] f4 e d c | bes2) c d1 | d2 g1 g2 | g2.( a4 bes2 a4 g | a1) d, | r2 a'1 e2 |
  f2( e4 d c1) | d e2( fis) | g\breve | r2 bes1 bes2 | a1 a2 b | c2. c4 bes?2 f | g2. g4 c,1 |

  % page 3
  f1 g2 f | ees( c d1) | d\breve \bar"||" g | fis1 g | a1. a2 | g\breve | a1 r2 a ~
  a g1 f2 ~ f4( e e d8[ e] f4 e d c | bes2 f') g a ~ a4( g g1 fis2) | g g a g | g g bes2. bes4 |
  bes2 g g1 | g2. g4 e2( fis) | g g, c1 | d2 g g a | f1 f2 d | ees1( d) | d\breve
  \bar"|."
}
altoWords = \lyricmode {
  Re -- gi -- na, ma -- ter mi -- se -- ri -- cor --
  di -- æ, vi -- ta, dul -- ce -- do, et spes no -- stra sal --
  ve. Ad te cla -- ma -- mus e -- xu -- les fi -- lii E -- væ, e -- xu -- les fi -- lii E --

  væ. Ad te su -- spi -- ra -- mus ge -- men -- tes, et flen -- tes, in hac la -- cry -- ma --
  rum val -- le. E -- ia er -- go ad -- vo --
  ca -- ta no -- stra, il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los

  ad nos con -- ver -- te. Et Je -- sum be -- ne -- di -- ctum fru --
  ctum_ ven -- tris_ tu -- i, no -- bis post hoc ex -- i -- li --
  um o -- sten -- de. O cle -- mens, O pi -- a, O dul -- cis Vir -- go, Ma -- ri -- a.
}

tenorMusic = \relative c'' {
  \incipit
  g'1( f) | f( d) | d\breve | e | f2.( e8[ d] c4 a d2) ~ d g, c c |
  bes a g1 | d'2.( e4 f1) | ees2 ees c1 | bes f | g2 a bes c ~ c4( bes bes a8[ g] a1)
  bes r | g bes2 c | d4( c d e f2. e8[ f] | g2) d r g ~ g f2 d e | e2.( e4 d c d2)

  % page 2

  e2 f1 f2 | e d1 cis2 | d1 r2 d | d1 e2 e | e1 fis ~ fis r2 g | e f c c ~
  c4( bes a g f1) | g a | g2 d'1 d2 | e1 f ~ f\breve | r2 f1 c2 |
  d( c4 bes a1) | g c | d\breve | r2 g1 g2 fis1 fis2 g | g2. a4 f?2 c | d e f2.( e8[ d] |

  % page 3

  c2) d g, c | c4( bes a g a1) | b\breve \bar"||" d | d1 d | f! f2 f ~ f( e4 d e1) | f2 f1 c2 |
  d e f1 | c r2 f ~ f d e fis | g1 d | r2 d d d | e e f2. f4 |
  f2 ees d1 | d2. d4 c1 | d2. d4 e2( fis) | g d e2. f?4 | d1 c2 b | c2.( bes?4 a1) | b\breve
  \bar"|."
}

tenorWords = \lyricmode {
  Sal -- ve Re -- gi -- na, ma -- ter __ mi -- se -- ri --
  cor -- di -- æ, vi -- ta, dul -- ce -- do, et spes no -- stra sal --
  ve. Ad te cla -- ma -- mus e -- xu -- les fi -- lii E --

  væ. Ad te su -- spi -- ra -- mus ge -- men -- tes et flen -- tes_ in hac la -- cry -- ma --
  rum val -- le. E -- ia er -- go_ ad -- vo --
  ca -- ta no -- stra, il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los

  ad nos con -- ver -- te. Et Je -- sum be -- ne -- di -- ctum fru -- ctum
  ven -- tris_ tu -- i, fru -- ctum ven -- tris tu -- i, no -- bis post hoc ex -- i -- li --
  um o -- sten -- de. O cle -- mens, O pi -- a, O dul -- cis Vir -- go, Ma -- ri -- a.
}

bassMusic = \relative c'' {
  \incipitCue
  g1( bes) | f( g) | d\breve | c | f1. d2 | g g f e |
  d1 r2 g ~ g4( a bes2) a bes | ees,1( f) | bes,2 bes'1 a2 | g f ees( c | d\breve) |
  g1 r | r2 g g f | bes1 f | r\breve | r2 d'2. d4 c2 | bes a bes1 |

  % page 2

  a2 f1 f2 | g g a1 | d, r2 d | g1 c,2 c' | a1 d, ~ d2 d' b c ~ c f, e f |
  c1( d) | ees( d) | r2 g1 g2 | c1 bes2 d ~ d a bes( a4 g | f e d e f g a2) |
  d, a'2.( bes4 c2 ~ c bes a1) | g\breve | g1. g2 | d'1 d2 g, | c2. a4 bes2 a | g2. g4 f1 ~

  % page 3

  f2 d e f | c( ees d1) | g\breve \bar"||" g | d1 g | f1. f2 | c'\breve | f, |
  r | r | r | r | r2 g fis g | c, c' bes2. g4 |
  bes2 c g1 | g2 g a1 | g2 bes a1 | g2 g c a | bes1 f2 g | c,1( d) | g\breve
  \bar"|."
}
bassWords = \lyricmode {
  Re -- gi -- na, ma -- ter mi -- se -- ri -- cor -- di --
  æ, vi -- ta, dul -- ce -- do, et spes no -- stra sal --
  ve. Ad te cla -- ma -- mus e -- xu -- les fi -- lii E --

  væ. Ad te su -- spi -- ra -- mus ge -- men -- tes et flen -- tes_ in hac la -- cry -- ma -- rum
  val -- le._ E -- ia er -- go ad -- vo -- ca --
  ta no -- stra, il -- los tu -- os mi -- se -- ri -- cor -- des o -- cu -- los __

  ad nos con -- ver -- te. Et Je -- sum be -- ne -- di -- ctum
  no -- bis post hoc ex -- i -- li --
  um o -- sten -- de. O cle -- mens, O pi -- a, O dul -- cis Vir -- go, Ma -- ri -- a.
}

pianoRH = \relative c' {
}
pianoLH = \relative c' {
}

\score {
<<
    \new ChoirStaff <<
    \new Staff = sop <<
      \new Voice = "sopranos" { \global \sopMusic }
    >>
    \new Lyrics = "sopranos"  \lyricsto "sopranos" \sopWords
    \new Staff = alt <<
      \new Voice = "altos" { \global \altoMusic }
    >>
    \new Lyrics = "altos"  \lyricsto "altos" \altoWords
    \new Staff = ten <<
      \clef "treble_8"
      \new Voice = "tenors" { \global \tenorMusic }
    >>
    \new Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    \new Staff = bas <<
      \clef bass
      \new Voice = "basses" { \global \bassMusic }
    >>
    \new Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #1.3
      \override VerticalAxisGroup #'staff-affinity = #0
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
%      \override VerticalAxisGroup #'staff-staff-spacing =
%      #'((basic-distance . 0)
%         (minimum-distance . 0)
%         (padding . -1)
%         (stretchability . 2))
    }
    \context {
      \Lyrics
      \override LyricText #'X-offset = #center-on-word
    }
  }
  \midi {
    \tempo 4 = 120
    \set Staff.midiInstrument = "flute"
  
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}

