\header {
  tagline = ""
  composer = "Sean Connolly"
}
\include "english.ly"
\include "lilypond-book-preamble.ly"
\include "header.ly"

global = {
  \key f \major
  \time 4/4
}

chantMusicPre = \relative c {
  \clef "treble_8"
  \cadenzaOn
  d4 f g( a) a g f( e) e( e)
  \cadenzaOff
  \bar "|"
}

chantWordsPre = \lyricmode {
  \set fontSize = #0.5
  Ve -- lum tem -- pli scis -- sum est,
}

sopMusic = \relative c' {
  \clef "treble_8"
  \once \override Score.RehearsalMark #'extra-offset = #'( 8 . -1 )
  \mark \markup { \musicglyph #"scripts.segno" }
  r4 d d cs | d f4.( e8 d4) | d cs d2 | e4 e8 e g4 g8 f | e4 d e2 | d2. f4 |
  f4. f8 f4 f | f e f2 | r1 | r4 f f e f f g f | e2 fs \bar "||"
  %\mark \markup { \musicglyph #"scripts.segno" }
    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "Fine"
}
sopWords = \lyricmode {
  \set fontSize = #0.5
  %\set vocalName = "2. "
  %\set shortVocalName = "2. "
  Et om -- nis | ter -- ra __ | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, dum vé -- ne -- ris in re -- gnum | Tu -- um.
}

altoMusic = \relative c {
  \clef "treble_8"
  f2 g4. g8 | a2 g | a4 a d2 | cs4 cs8 cs d4 d8 d | cs4 d2 cs4 | d2. d4 |
  d4. d8 c4 c | bf2. a8( g) | a4 bf( c d) | c2 bf | a4 a bf d ~ | d cs d2 \bar "||"
}

altoWords = \lyricmode {
  \set fontSize = #0.5
  Et om -- nis | ter -- ra | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, dum __ | vé -- ne -- ris in re -- gnum __ Tu -- um.
}

bassMusic = \relative c {
  \clef bass
  d2 e4. e8 | d2 bf | a4 e' d2 | a'4 a8 a g4 g8 d | a'4 bf g( a) | d,2. bf4 |
  bf4 bf' a a | g4. g8 f2 ~ | f4 g( a bf) | a2 g2 | f4 d g d | g( a) d,2 \bar "||"
}

bassWords = \lyricmode {
  \set fontSize = #0.5
  Et om -- nis | ter -- ra | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, __ dum __ | vé -- ne -- ris in re -- gnum | Tu -- um.

}

chantMusic = \relative c' {
  \clef "bass"
  \cadenzaOn
  f,4 g( a) a a g a a a bf a a g a a4. r8 \bar "|"
  a4 a a a a a a a a a a a g f g a g( f e) e4. r4
  \cadenzaOff \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "D.S. al Fine"
}


chantWords = \lyricmode {
  Pe -- træ __ scis -- sæ sunt, et mo -- nu -- mén -- ta a -- pér -- ta sunt,
  et mul -- ta cór -- po -- ra sanc -- tó -- rum, qui dor -- mí -- e -- rant sur -- re -- xé -- runt.
}

%altoWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
%}

\score {
  \new Staff <<
    \new Voice = "chantPre" \chantMusicPre
    \new Lyrics = "chantPre" \lyricsto chantPre \chantWordsPre
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \override Stem #'transparent = ##t
      \override Flag #'transparent = ##t
    }
    \context {
      \Voice
      \override Stem #'length = #0
    }
  }
}

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

\score {
  \new Staff <<
    \new Voice = "chant" \chantMusic
    \new Lyrics = "chant" \lyricsto chant \chantWords
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \override Stem #'transparent = ##t
      \override Flag #'transparent = ##t
    }
    \context {
      \Voice
      \override Stem #'length = #0
    }
  }
}
