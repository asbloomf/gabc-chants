\version "2.18.2"

\include "inc-magnificat-1D-SMC.ly"

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
                          (/ myStaffSize 22)))
}
