\header {
 % title = "Magnificat 1D"
  tagline = ""
  %composer = "SMC"
}
\include "lilypond-book-preamble.ly"

#(set-default-paper-size "letter")

stemOn = {
  \revert Staff.Stem #'transparent
  \revert Staff.Flag #'transparent
  \revert Voice.Stem #'length
}

stemOff = {
  \override Staff.Stem #'transparent = ##t
  \override Staff.Flag #'transparent = ##t
  \override Voice.Stem #'length = #0
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

global = {
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  \partial 4
  \relative c' { \stemOff \new CueVoice { d4 } \stemOn }
  \slurDashed
  d'1 f4.(\set melismaBusyProperties = #'() e8 d2 ) cis1 |
  d | c4.( bes8 a2) a1 | \bar "||"
  \relative c' { \stemOff \new CueVoice { f4 } }
  %\slurSolid \unset melismaBusyProperties
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
  \partial 4
  \relative c' { \stemOff \new CueVoice { s4 } \stemOn }
  \slurDashed
  f1 | a2( f4 g) | a1 |
  f1 | a4( g e2) | fis1 \bar "||"
  \relative c' { \stemOff \new CueVoice { s4 } }
}

tenorMusic = \relative c' {
  \partial 4
  \relative c { \stemOff \new CueVoice { s4 } \stemOn }
  \slurDashed
  a1 | d4( c d2) | e1 |
  d1 | f4( d~ d cis) d1 \bar "||"
  \relative c { \stemOff \new CueVoice { s4 } }
}

bassMusic = \relative c' {
  \partial 4
  \relative c { \stemOff \new CueVoice { d4 } \stemOn }
  \slurDashed
  d,1 | d4( a' bes2) | a1 |
  bes | f4( g a2) | d,1 \bar "||" 
  \relative c { \stemOff \new CueVoice { f4 } }
}

hiddenMusicII = {
  \hideNotes
  \partial 4 r4
  \repeat unfold 6 { \skip1 }
  f4
  \unHideNotes
}

hiddenWords = \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup\italic"→ 3."
}
hiddenWordsII = \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup\italic"→ 5."
}
hiddenWordsIII = \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup\italic"→ 7."
}
hiddenWordsIV = \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
  \markup\italic"→ 9."
}
hiddenWordsV = \lyricmode {
  \once \override LyricText #'self-alignment-X = #RIGHT
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
  Et_exsultávit_spiritus me -- _ _ us_:
  \set stanza = #"2. "
  \once \override LyricText #'self-alignment-X = #LEFT
  in_Deo_salutári me -- _ _ o.
}
altoWordsII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Quia_fecit_mihi_magna_qui po -- _ tens | est_:
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_sanctum_nomen e -- _ _ jus.
}
altoWordsIII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Fecit_poténtiam_in_bráchio su -- _ _ o_:
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  dispérsit_supérbos_mente_cordis su -- _ _ i.
}
altoWordsIV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Esuriéntes_implévit bo -- _ _ nis_:
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_dívites_dimísit_in -- á -- _ _ nes.
}
altoWordsV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_locútus_est_ad_patres no -- _ _ stros,
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Abraham,_et_sémini_ejus_in sæ -- _ cu -- la.
}
altoWordsVI = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_erat_in_príncipio,_|_et_nunc_et sem -- _ _ per,
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  et_in_sæcula_sæculórum. A -- _ _ men.
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
      \new Voice = "hiddenII" {
        \voiceThree
        << \global \hiddenMusicII >>
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
    >>
   
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords
    \context Lyrics = "altos" \lyricsto "hiddenII" \hiddenWords
    \context Lyrics = "altosII" \lyricsto "sopranos" \altoWordsII
    \context Lyrics = "altosII" \lyricsto "hiddenII" \hiddenWordsII
    \context Lyrics = "altosIII" \lyricsto "sopranos" \altoWordsIII
    \context Lyrics = "altosIII" \lyricsto "hiddenII" \hiddenWordsIII
    \context Lyrics = "altosIV" \lyricsto "sopranos" \altoWordsIV
    \context Lyrics = "altosIV" \lyricsto "hiddenII" \hiddenWordsIV
    \context Lyrics = "altosV" \lyricsto "sopranos" \altoWordsV
    \context Lyrics = "altosV" \lyricsto "hiddenII" \hiddenWordsV
    \context Lyrics = "altosVI" \lyricsto "sopranos" \altoWordsVI
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}
