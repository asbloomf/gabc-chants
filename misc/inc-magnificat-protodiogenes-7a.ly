\header {
  tagline = ""
  composer = "Protodiogenes Lansingensis"
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
  \key g \major
  \time 3/4
}

sopMusic = \relative c'' {
  \cadenzaOn
  \relative c' { \stemOff \new CueVoice { e4 } \stemOn }
  b\breve \bar "|" \cadenzaOff
  b2 b4 |
  \set melismaBusyProperties = #'()
  \tieDashed
  e d~ d |
  e2. | \cadenzaOn \bar "||" \break
  e\breve \bar "|" \cadenzaOff
  e4 d c |
  b2 a4 | b2. \bar "||"
  \relative c'' { \stemOff \new CueVoice { g4 } }
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
  \cadenzaOn
  \relative c' { \stemOff \new CueVoice { s4 } \stemOn }
  e\breve \bar "|" \cadenzaOff
  g2 g4 |
  \set melismaBusyProperties = #'()
  \tieDashed
  e fis~ fis |
  g2. | \cadenzaOn \bar "||"
  a\breve \bar "|" \cadenzaOff
  a4 d, e |
  e2 e4 |
  dis2. \bar "||"
  \relative c'' { \stemOff \new CueVoice { s4 } }
}

tenorMusic = \relative c' {
  \cadenzaOn
  \relative c { \stemOff \new CueVoice { s4 } \stemOn }
  b\breve \bar "|" \cadenzaOff
  b2 b4 |
  \set melismaBusyProperties = #'()
  \tieDashed
  c d~ d |
  b2. | \cadenzaOn \bar "||"
  c\breve \bar "|" \cadenzaOff
  c4 b a |
  g2 g4 |
  b2. \bar "||"
  \relative c' { \stemOff \new CueVoice { s4 } }
}

bassMusic = \relative c'' {
  \cadenzaOn
  \relative c { \stemOff \new CueVoice { e4 } \stemOn }
  g,\breve \bar "|" \cadenzaOff
  e2 d4 |
  \set melismaBusyProperties = #'()
  \tieDashed
  c b~ b |
  e2. | \cadenzaOn \bar "||"
  c\breve \bar "|" \cadenzaOff
  a4 b c |
  b2 c4 |
  b2. \bar "||"
  \relative c' { \stemOff \new CueVoice { g4 } }
}

hiddenMusic = \relative c'' {
\hideNotes
  \cadenzaOn
  r4
  r\breve \bar "|" \cadenzaOff
  r2. |
  r |
  r | \cadenzaOn \bar "||"
  r\breve \bar "|" \cadenzaOff
  r2. |
  r |
  r2. \bar "||"
  a4
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
  Et_exultávit
%  \once \override LyricText #'self-alignment-X = #CENTER
  spi -- ri -- tus me -- _ us 
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"2. "
  in_Deo
%  \once \override LyricText #'self-alignment-X = #CENTER
  sa -- lu -- tá -- ri me -- o.
}
altoWordsII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Quia_fecit_mihi
  \once \override LyricText #'self-alignment-X = #CENTER
  mag -- na qui po -- tens est_:
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"4. "
  et
  \once \override LyricText #'self-alignment-X = #CENTER
  san -- ctum no -- men e -- jus.
}
altoWordsIII = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Fecit_poténtiam_in
  \once \override LyricText #'self-alignment-X = #CENTER
  brá -- chi -- o su -- _ o_:
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"6. "
  dispérsit_supérbos
  \once \override LyricText #'self-alignment-X = #CENTER
  men -- te cor -- dis su -- i.
}
altoWordsIV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Esuriéntes
  \once \override LyricText #'self-alignment-X = #CENTER
  im -- plé -- vit bo -- _ nis_:
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"8. "
  et_dívites_di --
  \once \override LyricText #'self-alignment-X = #CENTER
  mí -- sit in -- á -- _ nes.
}
altoWordsV = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_locútus_est_ad
  \once \override LyricText #'self-alignment-X = #CENTER
  pa -- tres no -- _ _ stros,
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"10. "
  Abraham,_et_sémini
  \once \override LyricText #'self-alignment-X = #CENTER
  \set ignoreMelismata = ##t
  e -- jus in sæ -- cu -- la.
  \unset ignoreMelismata
}
altoWordsVI = \lyricmode {
%  \override StanzaNumber #'font-name = #"Garamond Premier Pro"
%  \override LyricText #'font-name = #"Garamond Premier Pro"
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_erat_in_príncipio,_et
  \once \override LyricText #'self-alignment-X = #CENTER
  nunc et sem -- _ _ per,
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = #"12. "
  et_in_sæcula
  \once \override LyricText #'self-alignment-X = #CENTER
  sæ -- cu -- ló -- rum. A -- men.
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
