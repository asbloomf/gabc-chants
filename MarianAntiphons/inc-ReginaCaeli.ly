\include "util.ly"
\header {
  %title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \abs-fontsize #18 "Alma Redemptoris Mater"}}
  composer = \markup"G P da Palestrina (c. 1526–1594)"
  tagline = ""
}
\include "lilypond-book-preamble.ly"

#(set-global-staff-size 18) \paper{ #(define fonts (make-pango-font-tree "Garamond Premier Pro" "Garamond Premier Pro" "Garamond Premier Pro" (/ 18 20))) }
global = {
  \key g \major
  \time 2/2
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

sopMusic = \relative c'' {
  g1 | a2 g | a1 | b2 c | b a4 c ~ c b a2 |
  g4 b d8([ c16 b a8 b] | c[ d] e2 b4) | d d c8([ b a g] | a4 g2) fis4 | g2 b ~ b4( a8[ g] a4) b |
  c2 b | b4 b4.( a8 a4) | b2 r | a4.( b8 c[ d] e4) ~ e d2( cis4) | d2 r | r r4 d( | d8[ c b a] g4) b |

  % page 2

  a4 g fis4.( g8 | a4) b4.( c8 d4) ~ d cis d8([ c b a] | g4) b a g ~ g( fis8[ e] fis2) | g1 \bar"||" %\break
  r2 c | d e | d4 d g,2 | a b4 b | c e2 d4 ~ d c b a ~ a8([ g] g2 fis4)
  g2 r | R1 | R1 | r4 d'4 c b | a8([ b c d] e[ d] d4) ~ d( cis d2) | \break

  % page 3

  b1 | c2 b4 a ~ a gis a4.( b16[ c] | d1) | g, | R1 |
  R | R | r2 r4 g | g8([ a b c] d4) e | d4.( c8 b2) | a4 g a2 |
  g r4 g | g8([ a b c] d4) e | d4.( c8 b4) g | a b4.( a8 g4) ~ g( fis8[ e] fis2) | g1

  \bar"|."
}
sopWords = \lyricmode {
  Re -- gí -- na cæ -- li læ -- tá -- re, al -- le -- lú --
  ia, læ -- tá -- re, al -- le -- lú -- ia; Qui -- a
  quem me -- ru -- í -- sti por -- tá -- re, al -- le --

  lú -- ia, al -- le -- lú -- ia, __ al -- le -- lú -- ia.
  Re -- sur -- ré -- xit, si -- cut di -- xit, re -- sur -- ré -- xit, __ sic -- ut di --
  xit, al -- le -- lú -- ia; __

  O -- ra pro no -- bis De -- um,
  al -- le -- lú -- ia, __ al -- le -- lú --
  ia, al -- le -- lú -- ia, __ al -- le -- lú -- ia.
}

altoMusic = \relative c' {
  d1 | d2 e4 g ~ g( fis8[ e] fis2) | g4 g e8([ d e fis] | g[ fis16 e d8 e] fis4) e | fis g2 fis 4 |
  g g fis2 | e g ~ g4 fis e2 | d1 ~ d2 r4 g ~ g( fis8[ e] fis4) fis |
  g1 | g2 e4 e ~ e( d8[ c] b2) | a4 a'2 g4 ~ g( fis e2) | d r | R1 | r4 g4.( fis8 e[ d]

  % page 2

  c4) e d4.( e8 | fis4) g4.( fis8 d4) | e2 fis4 g | d e2 c4 | d1 | d \bar"||"
  g2 a | b a4 g | fis a4.( g8 g4) ~ g( fis) g2 | e4. e8 g4 fis | a4.( g8 fis4) fis | b,4.( c8 d2) |
  b2 r | R1 | r2 r4 g'4 ~ g fis e d8([ e] | fis[ g] a4 g8[ fis fis e16 d] | e2 fis) |

  % page 3

  g1 | g2. f4 | e2 c | f1 | e | R |
  R | R | r4 g, g8([ a b c] | d4. e8 fis4) g | fis g4.( fis8 g[ e] | fis4) g2 fis4 |
  g8([ fis e d] e2 | d4) d b c | b2. c4 | a d4.( c16[ d] e4) | d1 ~ d

  \bar"|."
}
altoWords = \lyricmode {
  Re -- gí -- na cæ -- li læ -- tá -- re, al -- le -- lú --
  ia, læ -- tá -- re, al -- le -- lú -- ia; __ Qui -- a
  quem me -- ru -- í -- sti por -- tá -- re, al --

  le -- lú -- ia, __ al -- le -- lú -- ia, al -- le -- lú -- ia.
  Re -- sur -- ré -- xit, si -- cut di -- xit, re -- sur -- ré -- xit, sic -- ut di --
  xit, al -- le -- lú -- ia; __

  O -- ra pro no -- bis De -- um,
  al -- le -- lú -- ia, al -- le -- lú --
  ia, __ al -- le -- lú -- ia, al -- le -- lú -- ia. __
}

tenorMusic = \relative c' {
  b1 | a2 b | d1 | d2 r4 a | g8([ a b c] d4 c8[ b] | a4) b d d |
  b g a d | c2 b | a c ~ c4( b) a2 | b g | d' d |
  e d ~ d4( b) c2 | b4.( a8 g[ a b c] | d2) r | R1 | r4 d2 c4 ~ c( b a2) | g r2 |

  % page 2

  r2 r4 d'4 ~ d8([ c b a] g4) b | a2 d4 d( | b8[ a g fis] e4) g | a1 | g \bar"||"
  R1 | r2 c | d e | d1 | R | r2 d | g, a |
  g r4 d' | c b a8([ b c d] e[ d] d2 cis4 | d2) r | R1 | r2 d ~ 

  % page 3

  d2 b4 d | e2( d4. c8 | b2) a | a2.( b4) | c2 r4 g | g8([ a b c] d4) e |
  d4.( c8 b2) | a4 g a2 | g4 d' d g, | b2 r | r4 g g8([ a b c] | d4) e d4.( c8 |

  b4) c2 b8([ a] b[ a] g2) g'4 ~ g( fis8[ e]) d4 e | d8([ c b a] g4 c | a2.) a4 | b1

  \bar"|."
}

tenorWords = \lyricmode {
  Re -- gí -- na cæ -- li læ -- tá -- re, al -- le --
  lú --  ia, al -- le -- lú -- ia, al -- le -- lú -- ia; Qui -- a quem
  me -- ru -- í -- sti __ por -- tá -- re,

  al -- le -- lú -- ia, al -- le -- lú -- ia.
  Re -- sur -- ré -- xit, si -- cut di --
  xit, al -- le -- lú -- ia; __ O --

  ra pro no -- bis De -- um, al -- le -- lú --
  ia, __ al -- le -- lú -- ia, al -- le -- lú -- ia, al -- le -- lú -- ia, __
  al -- le -- lú -- ia, al -- le -- lú -- ia.
}

bassMusic = \relative c' {
  g1 | fis2 e | d1 | g2 r | R1 | r2 r4 d |
  e8([ fis g fis16 e] d8[ e fis g] | a2) e4 g | d2( a' | fis4 g) d2 | g,1 | R |
  c2 g' | g a | g2.( e4) | fis2 e | R1 | d4.( e8 fis[ g] a4) ~ a g2( fis4) | g1 |

  % page 2

  R1 | R | r2 r4 g ~ g8([ fis e d] c4) e | d1 | g, \bar"||"
  R1 | R | R | r2 g' | a b | a4 a d,2 | e d |
  r4 g2 fis4 | e d8([ e] fis[ g] a4 | g8[ fis fis e16 d] e2 | d) r | R1 | R |

  % page 3

  g1 | c,2 d | e f | d1 | c4 c c8([ d e f] | g4. a8 b4) c |
  b g4.( fis?8 g[ e] | fis4) g2 fis4 | g1 | r4 b b e, | b'4.( a8 g2) | R1 |
  r4 c,4 c8([ d e fis] | g2.) c,4 | g'2. e4 | fis g2( c,4 | d1) | g,

  \bar"|."
}
bassWords = \lyricmode {
  Re -- gí -- na cæ -- li læ --
  tá -- re, al -- le -- lú --  ia;
  Qui -- a quem me -- ru -- í -- sti por -- tá -- re,

  al -- le -- lú -- ia.
  Re -- sur -- ré -- xit, si -- cut di -- xit,
  al -- le -- lú -- ia; __

  O -- ra pro no -- bis De -- um, al -- le -- lú --
  ia,_ al -- le -- lú -- ia, al -- le -- lú -- ia, __
  al -- le -- lú -- ia, al -- le -- lú -- ia.
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

