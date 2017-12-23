\version "2.14.2"

\include "inc-AveReginaCaelorum.ly"

\paper {
  %paper-height = 11\in
  %paper-width = 8.5\in
  line-width = 8.5\in - 1.25\in
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
