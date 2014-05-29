\version "2.14"


\paper {
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
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
  c2 d\fermata | \cadenzaOn
  bes\breve \bar "|" \cadenzaOff
  f'2 d4( d4) |
  c1 |
  c\fermata
}
sopWords = \lyricmode {

}

altoMusic = \relative c'' {
  \cadenzaOn
  a\breve \bar "|" \cadenzaOff
  g2 a4 bes4 |
  bes( a) bes2 | \cadenzaOn
  g\breve \bar "|" \cadenzaOff
  bes2 bes4( bes) |
  bes4( a g2) |
  a1
}
altoWords = \lyricmode {
  \set stanza = #"2. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Et_exultávit |
  \once \override LyricText #'self-alignment-X = #CENTER
  spi -- ri -- tus | me -- us |
  \once \override LyricText #'self-alignment-X = #LEFT
  in_Deo_salu -- |
  \once \override LyricText #'self-alignment-X = #CENTER
  tá -- ri | me -- | o.
}
altoWordsII = \lyricmode {
  \set stanza = #"4. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Quia_fecit_mihi_magna |
  \once \override LyricText #'self-alignment-X = #CENTER
  qui po -- _ | tens est_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  et_sanctum |
  \once \override LyricText #'self-alignment-X = #CENTER
  no -- men | e -- | jus.
}
altoWordsIII = \lyricmode {
  \set stanza = #"6. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Fecit_poténtiam_in |
  \once \override LyricText #'self-alignment-X = #CENTER
  brá -- chi -- o | su -- o_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  dispérsit_supérbos_mente |
  \once \override LyricText #'self-alignment-X = #CENTER
  cor -- dis | su -- | i.
}
altoWordsIV = \lyricmode {
  \set stanza = #"8. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Esuriéntes |
  \once \override LyricText #'self-alignment-X = #CENTER
  im -- plé -- vit | bo -- nis_: |
  \once \override LyricText #'self-alignment-X = #LEFT
  et_dívites_dimísit_in -- |
  \once \override LyricText #'self-alignment-X = #CENTER
  á -- _ | _ | nes.
}
altoWordsV = \lyricmode {
  \set stanza = #"10. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_locútus_est_ad |
  \once \override LyricText #'self-alignment-X = #CENTER
  pa -- tres _ | no -- stros, |
  \once \override LyricText #'self-alignment-X = #LEFT
  Abraham,_et_sémini |
  \once \override LyricText #'self-alignment-X = #CENTER
  \set ignoreMelismata = ##t
  e -- jus in | sæ -- _ cu -- | la.
  \unset ignoreMelismata
}
altoWordsVI = \lyricmode {
  \set stanza = #"12. "
  \once \override LyricText #'self-alignment-X = #LEFT
  Sicut_erat_in_príncipio, |
  \once \override LyricText #'self-alignment-X = #CENTER
  et nunc et | sem -- per, |
  \once \override LyricText #'self-alignment-X = #LEFT
  et_in_sæcula_sæcu -- |
  \once \override LyricText #'self-alignment-X = #CENTER
  ló -- rum. | A -- | men.
}

bassMusic = \relative c'' {
  \cadenzaOn
  f,\breve \bar "|" \cadenzaOff
  ees4.( d8) c4 d8( ees) |
  f2 bes,\fermata | \cadenzaOn
  ees\breve \bar "|" \cadenzaOff
  d4( ees8 f) g4 f |
  e4( f2 e4) |
  f1\fermata
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
      \new Voice = "bass" {
        \voiceOne
        << \global \bassMusic >>
      }
    >>
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "altosII" \lyricsto "altos" \altoWordsII
    \context Lyrics = "altosIII" \lyricsto "altos" \altoWordsIII
    \context Lyrics = "altosIV" \lyricsto "altos" \altoWordsIV
    \context Lyrics = "altosV" \lyricsto "altos" \altoWordsV
    \context Lyrics = "altosVI" \lyricsto "altos" \altoWordsVI
  >>
}