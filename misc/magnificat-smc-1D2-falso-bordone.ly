\version "2.18.2"

\header {
  %title = "Magnificat 1 D2 - Falso Bordone"
  tagline = ""
  composer = "SMC"
}

#(set-default-paper-size "letter")

\paper {
  %myStaffSize = #19
  myStaffSize = #24
  indent = 0\mm
  %line-width = 7.5\in
  line-width = 8.5\in - 72\pt
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
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  r4 f g( a) | a1 | f2 f | g4( 
  \slurDashed
  a )(
  \set melismaBusyProperties = #'()
  bes2) | bes( a) | g( g) \bar "||"
  a1 | f2 f | 
  \slurSolid \unset melismaBusyProperties
  g4(\slurDashed a)(
  \set melismaBusyProperties = #'()
  bes2)( c) bes~ | bes a( g) ~ g | a1 \bar "||"
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
  r4 d d( f) | f1 | f2 f2 |
  \set melismaBusyProperties = #'()
  \slurDashed
  g2( g) | g2( f) | f( e) \bar "||"
  f1 | f2 f | g2( g)( | g) g ~ | g f( | f)( e) | f1 \bar "||"
}

tenorMusic = \relative c' {
  r4 bes bes( c) | c1 | d2 c | bes4(
  \set melismaBusyProperties = #'()
  \slurDashed
  c)( d2) | c( c) | c( c) \bar "||"
  \slurSolid
  c1 | d2 c | bes4(\slurDashed c)( d2)( c1)( c) | c2( c2) | c1 \bar "||"
}

bassMusic = \relative c' {
  r4 bes g( f) | f1 | bes2 a | g2. f4 |
  \set melismaBusyProperties = #'()
  \slurDashed
  e2( f) | c2( c2) \bar "||"
  f1 | bes2 a | g2.( f4)( e1)( f) | c2( c) | f1 \bar "||" 
}

hiddenMusic = \relative c' {
\hideNotes
  \repeat unfold 6 { \skip1 } 
  \unset melismaBusyProperties
  f1 | bes2 a | g4( g) f2 e1 f | c2 c | f1 \bar "||" 
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
  Et ex --
  \once \override LyricText #'self-alignment-X = #LEFT
  sultávit | spi -- ri -- tus __ _ _ me -- us __ _
  \set stanza = #"2. "
  \once \override LyricText #'self-alignment-X = #LEFT
  in | De -- o | sa -- lu -- tá -- ri __ _ me -- _ _ o.
}
altoWordsII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"4. "
  Qui -- a __
  \once \override LyricText #'self-alignment-X = #LEFT
  fecit_mihi | ma -- gna | qui __ po -- _ tens | est_: __ _ |
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et | san -- ctum | no -- _ _ men __ _ e -- _ _ jus.
}
altoWordsIII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"6. "
  Fe -- cit __ |
  \once \override LyricText #'self-alignment-X = #LEFT
  poténtiam_in | brá -- chi -- o __ _ | su -- _ o_: __ _ |
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  dispérsit_su -- pér -- bos | men -- te | cor -- dis __ _ su -- _ _ | i.
}
altoWordsIV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"8. "
  E -- su --
  \once \override LyricText #'self-alignment-X = #LEFT
  rién -- tes im -- plé -- vit | bo -- _ nis_: __ _ |
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_dívi -- tes di -- mí -- sit in -- á -- _ _ _ _ | nes.
}
altoWordsV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"10. "
  Sic -- ut __ |
  \once \override LyricText #'self-alignment-X = #LEFT
  locútus | est ad | pa -- tres | no -- _ stros, __ _ |
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Abraham,_et | sé -- mi -- ni __ e -- jus in __ _ _ | sæ -- cu -- | la.
}
altoWordsVI = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"12. "
  Sic -- ut __ |
  \once \override LyricText #'self-alignment-X = #LEFT
  erat_in_prín -- ci -- pi -- o, __ et | nunc et | sem -- per, |
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_in_sæcula | sæ -- cu -- | ló -- _ _ rum. __ _ A -- _ _ | men.
}

bassWords = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set fontSize = #0.5
  \set stanza = #"2. "
  %\set vocalName = "2. "
  %\set shortVocalName = "2. "
%  Et ex --
%  \once \override LyricText #'self-alignment-X = #LEFT
%  sultávit | spi -- ri -- tus __ _ _ me -- us __ _
%  \set stanza = #"2. "
  \once \override LyricText #'self-alignment-X = #LEFT
  in | De -- o | sa -- lu -- tá -- ri | me -- _ o.
}
bassWordsII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"4. "
%  Qui -- a __
%  \once \override LyricText #'self-alignment-X = #LEFT
%  fecit_mihi | ma -- gna | qui __ po -- _ | tens est_: __ _ |
%  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et | san -- ctum | no -- _ _ men | e -- _ jus.
}
bassWordsIII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"6. "
%  Fe -- cit __ |
%  \once \override LyricText #'self-alignment-X = #LEFT
%  poténtiam_in | brá -- chi -- o __ _ | su -- _ o_: __ _ |
%  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  dispérsit_su -- pér -- bos | men -- te | cor -- dis | su -- _ | i.
}
bassWordsIV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"8. "
%  E -- su --
%  \once \override LyricText #'self-alignment-X = #LEFT
%  rién -- tes im -- plé -- vit | bo -- _ nis_: __ _ |
%  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_dívi -- tes di -- mí -- sit in -- á -- _ _ | nes.
}
bassWordsV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"10. "
%  Sic -- ut __ |
%  \once \override LyricText #'self-alignment-X = #LEFT
%  locútus | est ad | pa -- tres | no -- _ stros, __ _ |
%  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Abraham,_et | sé -- mi -- ni __ e -- jus in | sæ -- cu -- | la.
}
bassWordsVI = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"12. "
%  Sic -- ut __ |
%  \once \override LyricText #'self-alignment-X = #LEFT
%  erat_in_prín -- ci -- pi -- o, __ et | nunc et | sem -- per, |
%  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_in_sæcula | sæ -- cu -- | ló -- _ _ rum. | A -- _ | men.
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
      \new Voice = "tenors" {
        \voiceThree
        << \global \tenorMusic >>
      }
	    \new Voice = "bass"{
		    \voiceFour
		    << \global \bassMusic >>
	    }
      \new Voice = "hidden" {
        \voiceThree
        \override Slur #'transparent = ##t
        << \global \hiddenMusic >>
      }
    >>
    \new Lyrics = "bass"
    \new Lyrics = "bassII"
    \new Lyrics = "bassIII"
    \new Lyrics = "bassIV"
    \new Lyrics = "bassV"
    \new Lyrics = "bassVI"
    
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords
	%\context Lyrics = "altos" \lyricsto "hidden" \hiddenWords
    \context Lyrics = "altosII" \lyricsto "sopranos" \altoWordsII
	%\context Lyrics = "altosII" \lyricsto "hidden" \hiddenWordsII
    \context Lyrics = "altosIII" \lyricsto "sopranos" \altoWordsIII
	%\context Lyrics = "altosIII" \lyricsto "hidden" \hiddenWordsIII
    \context Lyrics = "altosIV" \lyricsto "sopranos" \altoWordsIV
	%\context Lyrics = "altosIV" \lyricsto "hidden" \hiddenWordsIV
    \context Lyrics = "altosV" \lyricsto "sopranos" \altoWordsV
	%\context Lyrics = "altosV" \lyricsto "hidden" \hiddenWordsV
    \context Lyrics = "altosVI" \lyricsto "sopranos" \altoWordsVI

    \context Lyrics = "bass" \lyricsto "hidden" \bassWords
    \context Lyrics = "bassII" \lyricsto "hidden" \bassWordsII
    \context Lyrics = "bassIII" \lyricsto "hidden" \bassWordsIII
    \context Lyrics = "bassIV" \lyricsto "hidden" \bassWordsIV
    \context Lyrics = "bassV" \lyricsto "hidden" \bassWordsV
    \context Lyrics = "bassVI" \lyricsto "hidden" \bassWordsVI
  >>
  \layout {
    \context {
      \Staff
      %\remove "Time_signature_engraver"
    }
  }
}

