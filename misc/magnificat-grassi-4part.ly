\version "2.18.2"

\header {
  tagline = ""
  composer = "Ciro Grassi (1868-1952)"
}
\include "lilypond-book-preamble.ly"

#(set-default-paper-size "letter")

\paper {
  %myStaffSize = #19
  myStaffSize = #24
  indent = 0\mm
  %line-width = 7.5\in
  line-width = 8.5\in - 144\pt
  %ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
  #(define fonts
   (make-pango-font-tree "Garamond Premier Pro"
                         "Garamond Premier Pro"
                         "Garamond Premier Pro"
                          (/ myStaffSize 23)))
}

\layout {
}

global = {
  \key bes \major
  \time 4/4
}

sopMusic = \relative c'' {
  \cadenzaOn
  c\breve \bar "|" \cadenzaOff
  ees2 ees4 d |
  c2 d\fermata | \cadenzaOn \bar "||" \break
  bes\breve \bar "|" \cadenzaOff
  f'2 d4( d4) |
  c2( c) |
  c1\fermata \bar "||"
}
sopWords = \lyricmode {

}

altoMusic = \relative c'' {
  \cadenzaOn
  a\breve \bar "|" \cadenzaOff
  g2 a4 bes4 |
  bes( a) bes2 | \cadenzaOn \bar "||"
  g\breve \bar "|" \cadenzaOff
  bes2 bes4( bes) |
  bes4( a g2) |
  a1 \bar "||"
}

tenorMusic = \relative c'' {
  \cadenzaOn
  f,\breve \bar "|" \cadenzaOff
  ees4.( d8) c4 d8[ ees] |
  f2 bes,\fermata | \cadenzaOn \bar "||"
  ees\breve \bar "|" \cadenzaOff
  d4( ees8 f) g4( f) |
  e4( f2 e4) |
  f1\fermata \bar "||"
}

bassMusic = \relative c' {
  \cadenzaOn
  f,\breve \bar "|" \cadenzaOff
  c2 f4 f |
  f2 bes\fermata | \cadenzaOn \bar "||"
  ees,\breve \bar "|" \cadenzaOff
  bes'4( c8 d) g,4( bes) |
  c2( c2) |
  f,1\fermata \bar "||"
}

hiddenMusic = \relative c'' {
\hideNotes
  \cadenzaOn
  r\breve \bar "|" \cadenzaOff
  r1 |
  r1 | \cadenzaOn \bar "||"
  r\breve \bar "|" \cadenzaOff
  r1 |
  r1 |
  r2. a4\bar "||"
\unHideNotes
}

hiddenWords = \lyricmode {
  \markup\italic"→ 3."
}
hiddenWordsII = \lyricmode {
  \markup\italic"→ 5."
}
hiddenWordsIII = \lyricmode {
  \markup\italic"→ 7."
}
hiddenWordsIV = \lyricmode {
  \markup\italic"→ 9."
}
hiddenWordsV = \lyricmode {
  \markup\italic"→ 11."
}

altoWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set fontSize = #0.5
  \set stanza = #"2. "
  %\set vocalName = "2. "
  %\set shortVocalName = "2. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Et_exultávit |
%  \once \override LyricText #'self-alignment-X = #CENTER
  spi -- ri -- tus | me -- us |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"2. "
  in_Deo_salu -- |
%  \once \override LyricText #'self-alignment-X = #CENTER
  tá -- ri | me -- | o.
}
altoWordsII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Quia_fecit_mihi_magna |
  \once \override LyricText #'self-alignment-X = #CENTER
  qui po -- _ | tens est_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"4. "
  et_sanctum |
  \once \override LyricText #'self-alignment-X = #CENTER
  no -- men | e -- | jus.
}
altoWordsIII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Fecit_poténtiam_in |
  \once \override LyricText #'self-alignment-X = #CENTER
  brá -- chi -- o | su -- o_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"6. "
  dispérsit_supérbos_mente |
  \once \override LyricText #'self-alignment-X = #CENTER
  cor -- dis | su -- | i.
}
altoWordsIV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Esuriéntes |
  \once \override LyricText #'self-alignment-X = #CENTER
  im -- plé -- vit | bo -- nis_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"8. "
  et_dívites_dimísit_in -- |
  \once \override LyricText #'self-alignment-X = #CENTER
  á -- _ | _ | nes.
}
altoWordsV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_locútus_est_ad |
  \once \override LyricText #'self-alignment-X = #CENTER
  pa -- tres _ | no -- stros, |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"10. "
  Abraham,_et_sémini |
  \once \override LyricText #'self-alignment-X = #CENTER
  \set ignoreMelismata = ##t
  e -- jus in | sæ -- cu -- | la.
  \unset ignoreMelismata
}
altoWordsVI = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_erat_in_príncipio, |
  \once \override LyricText #'self-alignment-X = #CENTER
  et nunc et | sem -- per, |
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"12. "
  et_in_sæcula_sæcu -- |
  \once \override LyricText #'self-alignment-X = #CENTER
  ló -- rum. | A -- | men.
}

\score {
  \new ChoirStaff <<
    %\new Lyrics = "sopranos"
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
    
    \new Lyrics = "altos"
    \new Lyrics = "altosII"
    \new Lyrics = "altosIII"
    \new Lyrics = "altosIV"
    \new Lyrics = "altosV"
    \new Lyrics = "altosVI"
    
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenor" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "bass" {
        \voiceTwo
        << \global \bassMusic >>
      }
	    \new Voice = "hidden"{
		    \voiceThree
		    << \global \hiddenMusic >>
	    }
    >>
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords
	\context Lyrics = "altos" \lyricsto "hidden" \hiddenWords
    \context Lyrics = "altosII" \lyricsto "sopranos" \altoWordsII
	\context Lyrics = "altosII" \lyricsto "hidden" \hiddenWordsII
    \context Lyrics = "altosIII" \lyricsto "sopranos" \altoWordsIII
	\context Lyrics = "altosIII" \lyricsto "hidden" \hiddenWordsIII
    \context Lyrics = "altosIV" \lyricsto "sopranos" \altoWordsIV
	\context Lyrics = "altosIV" \lyricsto "hidden" \hiddenWordsIV
    \context Lyrics = "altosV" \lyricsto "sopranos" \altoWordsV
	\context Lyrics = "altosV" \lyricsto "hidden" \hiddenWordsV
    \context Lyrics = "altosVI" \lyricsto "sopranos" \altoWordsVI
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}

