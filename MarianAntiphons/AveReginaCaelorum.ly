\version "2.14.2"
\include "util.ly"
\header {
  %composer = "Traditional"
  %title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \fontsize #1 \smallCapsOldStyle"Ave Regina Cælorum"}}
  poet = ""
  composer = "Francesco Soriano (1548 or 1549–1621)"
  tagline = ""
}
\include "lilypond-book-preamble.ly"

\paper {
  %paper-height = 11\in
  %paper-width = 8.5\in
  line-width = 6\in - 1.25\in
  indent = 0\in
  %system-system-spacing = #'((basic-distance . 10) (padding . 0))
  system-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -5)
       (stretchability . 100))
  ragged-last-bottom = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  line-width = #(- line-width (* mm  3.000000))  
}
#(set-global-staff-size 17) \paper{ #(define fonts (make-pango-font-tree "Garamond Premier Pro" "Garamond Premier Pro" "Garamond Premier Pro" (/ 17 20))) }
global = {
  \key g\major
  \autoBeamOff
  %\override DynamicLineSpanner #'staff-padding = #0.0
  %\override DynamicLineSpanner #'Y-extent = #'(-1 . 1)
  \time 4/4
}

incipit = {
  g8[^\markup\italic"more liturgico" fis e fis] d[ e]( g4)^\fermata \bar"||"
}
incipitCue = {
  \new CueVoice {
      g8[ fis e fis] d[ e]( g4)^\fermata \bar"||"
  }
}

sopMusic = \relative c' {
  \relative c'' {\incipitCue}
  b'2 a~ |
  a g4 fis |
  g4.( fis16)[ g]( a4 g)~ |
  g( fis) g2 |

  b4. b8 b4 b |
  c e2 d4 |
  c2 b |
  b2. b4 |
  b2 b4 c~ |

  %page2
  c b a2~ |
  a a |
  b b4 b~ |
  b a a g~ |

  g fis g2 \bar"||"\break
  \time 3/4
  \tempo "mossa"
  b4\rest d c |
  b2 b4 |
  c2 c4 |
  b2 b4 |

  a2 a4 |
  b2 d4 |
  c2 c4 |
  d2 d4 \bar"||"\break
  \time 4/4
  \tempo "tempo primo"
  e2 e4 e |

  %page3
  e2 e4 b |
  b2( e) |
  a,1 |
  c2. c4 |
  d4^\markup\italic"rall." b a2 |
  a4 d4.( c8 b4) |
  a8[ g]~ g2( fis4) |
  g1\fermata \bar"|."
}
sopWords = \lyricmode {
  A -- ve, Re -- gí -- na Cæ -- ló -- rum,
  A -- ve, Dó -- mi -- na An -- ge -- ló -- rum:
  Sal -- ve, ra -- dix, sal -- ve, por -- ta
  Ex qua mun -- do lux est or -- ta:
  Gau -- de, Vir -- go glo -- ri -- ó -- sa,
  Su -- per om -- nes spe -- ci -- ó -- sa,
  Va -- le, o val -- de de -- có -- ra,
  Et pro no -- bis Chri -- stum ex -- ó -- ra.
}
sopWordsNoIncipit = \lyricmode {
  Re -- gí -- na Cæ -- ló -- rum,
  A -- ve, Dó -- mi -- na An -- ge -- ló -- rum:
  Sal -- ve, ra -- dix, sal -- ve, por -- ta
  Ex qua mun -- do lux est or -- ta:
  Gau -- de, Vir -- go glo -- ri -- ó -- sa,
  Su -- per om -- nes spe -- ci -- ó -- sa,
  Va -- le, o val -- de de -- có -- ra,
  Et pro no -- bis Chri -- stum ex -- ó -- ra.
}
altWords = \lyricmode {
  Re -- gí -- na Cæ -- ló -- rum,
  A -- ve, Dó -- mi -- na An -- ge -- ló -- rum:
  Sal -- ve, ra -- dix, sal -- ve, por -- ta
  Ex qua mun -- do lux est or -- ta:
  Gau -- de, Vir -- go glo -- ri -- ó -- sa,
  Su -- per om -- nes spe -- ci -- ó -- sa,
  Va -- le, o val -- de de -- có -- ra,
  Et pro no -- bis Chri -- stum ex -- ó -- ra,
    ex -- ó -- ra.
}

altoMusic = \relative c' {
  \relative c'' {\incipitCue}
  d2 d~ |
  d d |
  d4 e4.( d16)[ c b8 c]( |
  d2) d |

  g4. g8 g4 g |
  g g4. e8 g4~ |
  g( fis) g2 |
  fis2. fis4 |
  fis2 g4 g~ |

  g g e2~ |
  e fis |
  g2 g4 g~ |
  g e c d |

  d2 d \bar"||"
  \time 3/4
  r4 g e |
  g2 g4 |
  g2 g4 |
  g2 g4 |

  fis2 fis4 |
  g2 g4 |
  a2 a4 |
  fis2 fis4 \bar"||"
  \time4/4
  g2 g4 g |

  %page3
  g2 g4 g |
  g1 |
  fis |
  a2. a4 |
  fis g e e8 e |

  fis[ g a fis]( g4) g8 d |
  e4.( b8 d2) |
  d1\fermata \bar"|."
}

tenorMusic = \relative c' {
  \incipitCue
  g2 a( |
  b) b4 a |
  b4( c4. b8)[ b a16 g]( |
  a2) b |

  d4. d8 d4 d |
  e2 c4 g |
  c2 d |
  d2. d4 |
  d2 d4 e~ |

  %page2
  e4 d2 c8[ b]( |
  c2) d |
  d d4 e~ |
  e c d b |

  a2 g \bar"||"
  \time3/4
  r4 b c |
  d2 d4 |
  e2 e4 |
  d2 d4 |

  d2 d4 |
  d2 d4 |
  e2 e4 |
  d2 a4 \bar"||"
  \time4/4
  c2 c4 c |

  %page3
  c2 b4 e~ |
  e d2( cis4) |
  d1 |
  e2. e4 |
  d d2 c4 |

  d4. a8 b[ c d b]( |
  c)[ b b a16 g]( a2) |
  b1\fermata \bar"|."
}

bassMusic = \relative c' {
  \incipit
  g2 fis( |
  g) g4 d |
  g8[ fis e d c d]( e4 |
  d2) g, |

  g'4. g8 g4 g |
  c, c'2 b4 |
  a2 g |
  b2. b4 |
  b2 g4 c~ |

  %page2
  c4 g a2~ |
  a d, |
  g g4 e~ |
  e a fis g |

  d2 g, \bar"||"
  \time3/4
  d'4\rest g a |
  g2 g4 |
  c,2 c4 |
  g'2 g4 |

  d2 d4 |
  g2 b4 |
  a2 a4 |
  d,2 d4 \bar"||"
  \time4/4
  c2 c4 c |

  %page3
  c2 e4 e |
  g4.( fis8 e2) |
  d1 |
  a'2. a4 |
  b g a2 |

  d,2 g |
  c,4( e d2) |
  g,1\fermata \bar"|."
}

pianoRH = \relative c' {
  
}
pianoLH = \relative c' {
  
}

\score {
  <<
   \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranos" { << \global \sopMusic >> }
    >>
    \new Lyrics \lyricsto "sopranos" \sopWordsNoIncipit
    \new Staff <<
      \new Voice = "altos" { << \global \altoMusic >> }
    >>
    \new Lyrics \lyricsto "altos" \altWords
    \new Staff <<
      \clef "treble_8"
      \new Voice = "tenors" { << \global \tenorMusic >> }
    >>
    \new Lyrics = "ten" \lyricsto "tenors" \sopWordsNoIncipit
    \new Staff <<
      \clef bass
      \new Voice = "basses" { << \global \bassMusic >> }
    >>
    \new Lyrics \lyricsto "basses" \sopWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #2
    }
    \context {
      \Score
      %\override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff
      \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}