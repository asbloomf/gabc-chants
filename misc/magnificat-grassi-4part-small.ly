\version "2.18.2"

\include "inc-magnificat-grassi.ly"

\paper {
  %myStaffSize = #19
  myStaffSize = #19
  indent = 0\mm
  %line-width = 7.5\in
  line-width = 6\in - 1.25\in
  %ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
  #(define fonts
   (make-pango-font-tree "Garamond Premier Pro"
                         "Garamond Premier Pro"
                         "Garamond Premier Pro"
                          (/ myStaffSize 19)))
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

