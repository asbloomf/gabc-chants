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

incipitAlto = {
  \cadenzaOn
  \stemOff
  \grace s4 d4 \grace s f \grace s g( \grace s a) \grace s a \grace s g \grace s f( \grace s e) \grace s e( \grace s e)
  \stemOn
  \cadenzaOff
  \bar "|"
}
incipit = {
  \cadenzaOn
  \stemOff
  d4 f g( a) a g f( e) e( e)
  \stemOn
  \cadenzaOff
  \bar "|"
}
%incipitWords = Ve -- lum tem -- pli scis -- sum est,

chantMusicPre = \relative c {
  \clef "treble_8"
  \incipit
  %s8 <d f>2
}
chantMusicPreSup = \relative c {
  \repeat unfold 10 {s4} |
  %s8 d'4\rest d
}

chantWordsPre = \lyricmode {
  \set fontSize = #0.5
  Ve -- lum tem -- pli scis -- sum est,
  %Et
}

sopMusic = \relative c {
  \clef "treble_8"
  \new CueVoice {
    \incipit
  }
  \mark \markup { \musicglyph #"scripts.segno" }
  r4 d' d cs | d f4.( e8 d4) | d cs d2 | e4 e8 e g4 g8 f | e4 d e2 | d2. f4 |
  f4. f8 f4 f | f e f2 | R1 | r4 f f e f f g f | e2 fs\fermata \bar "||"
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
  %Ve -- lum tem -- pli scis -- sum est,
  Et om -- nis | ter -- ra __ | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, dum vé -- ne -- ris in re -- gnum | Tu -- um.
}

altoMusic = \relative c {
  \clef "treble_8"
  \incipit
  f2 g4. g8 | a2 g | a4 a d2 | cs4 cs8 cs d4 d8 d | cs4 d2 cs4 | d2. d4 |
  d4. d8 c4 c | bf2. a8( g) | a4 bf( c d) | c2 bf | a4 a bf d ~ | d cs d2\fermata \bar "||"
}

altoWords = \lyricmode {
  \set fontSize = #0.5
  Ve -- lum tem -- pli scis -- sum est,
  Et om -- nis | ter -- ra | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, dum __ | vé -- ne -- ris in re -- gnum __ Tu -- um.
}

bassMusic = \relative c {
  \clef bass
  \new CueVoice {
    \incipit
  }
  d2 e4. e8 | d2 bf | a4 e' d2 | a'4 a8 a g4 g8 d | a'4 bf g( a) | d,2. bf4 |
  bf4 bf' a a | g4. g8 f2 ~ | f4 g( a bf) | a2 g2 | f4 d g d | g( a) d,2\fermata \bar "||"
    \cadenzaOn
  \stemOff
  s8 f4 g( a) a a g a a a bf a a g a a4. \bar "|"
  a\breve g4 f g a g( f e) e4.
  \cadenzaOff \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "D.S. al Fine"
  \stemOn
  %{s8 <<
        {
          <d f>2
        }
        \new Voice {
          d'4\rest d
        }
     >>
     %}%
}

bassWords = \lyricmode {
  \set fontSize = #0.5
  %Ve -- lum tem -- pli scis -- sum est,
  Et om -- nis | ter -- ra | tré -- mu -- it_: | la -- tro de cru -- ce cla -- má -- bat, di -- cens_: Me -- mén -- to me -- i, | Dó -- mi -- ne, __ dum __ | vé -- ne -- ris in re -- gnum | Tu -- um.

  Pe -- træ __ scis -- sæ sunt, et mo -- nu -- mén -- ta a -- pér -- ta sunt,
  \once \override LyricText #'self-alignment-X = #LEFT
  et_multa_córpora_sanctórum,_qui_dormí -- e -- rant sur -- re -- xé -- runt.
  Et
}

chantMusic = \relative c' {
  \clef "bass"
  \cadenzaOn
  \stemOff
  f,4 g( a) a a g a a a bf a a g a a4.\fermata \bar "|"
  a\breve g4 f g a g( f e) e4.\fermata
  \cadenzaOff \bar "||"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \override Score . RehearsalMark #'font-shape = #'italic
    \override Score.RehearsalMark #'font-size = #0.5
    \mark "D.S. al Fine"
  \stemOn
  s8 <<
        {
          <d f>2
        }
        \new Voice {
          d4\rest d
        }
     >>
}
chantMusicSup = \relative c' {
  \repeat unfold 14 {s4} s4.
  s1 s1 \repeat unfold 7 {s4} s4. |
  s8 d4\rest d
}


chantWords = \lyricmode {
  Pe -- træ __ scis -- sæ sunt, et mo -- nu -- mén -- ta a -- pér -- ta sunt,
  \once \override LyricText #'self-alignment-X = #LEFT
  et_multa_córpora_sanctórum,_qui_dormí -- e -- rant sur -- re -- xé -- runt.
  Et
}

%altoWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
%}

%\score {
%  \new Staff \with { \remove "Time_signature_engraver" } <<
%    \global
%    \new Voice = "chant" \chantMusicPre
%    \new Voice = "chant2" \chantMusicPreSup
%    \new Lyrics = "chant" \lyricsto chant \chantWordsPre
%  >>
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
      \Staff \RemoveEmptyStaves
    }
  }
}

%\score {
%  \new Staff \with { \remove "Time_signature_engraver" } <<
%    \global
%    \new Voice = "chant" \chantMusic
%    \new Voice = "chant2" \chantMusicSup
%    \new Lyrics = "chant" \lyricsto chant \chantWords
%  >>
%}
