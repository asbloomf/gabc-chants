\version "2.14.2"

\include "inc-ReginaCaeli.ly"

\paper {
  %print-all-headers = ##t
  line-width = 6\in - 1.25\in
  indent = 0\in
  %system-system-spacing = #'((basic-distance . 10) (padding . 0))
  system-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -3)
       (stretchability . 100))
%  top-markup-spacing =
%    #'((basic-distance . 0)
%       (minimum-distance . 0)
%       (padding . 0)
%       (stretchability . 0))
  line-width = #(- line-width (* mm  3.000000))
%  ragged-last = ##t
  
}
