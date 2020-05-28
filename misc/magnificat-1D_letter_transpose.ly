\version "2.18.2"

\include "inc-magnificat-1D_transpose.ly"

  #(set-global-staff-size 23)

\paper {
  %myStaffSize = #19
  myStaffSize = #23
  indent = 0\mm
  %line-width = 7.5\in
  line-width = 8.5\in - 2\in
  %ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
  #(define fonts
   (make-pango-font-tree "Garamond Premier Pro"
                         "Garamond Premier Pro"
                         "Garamond Premier Pro"
                          (/ myStaffSize 20)))
}
