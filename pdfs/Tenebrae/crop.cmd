pdfcrop tenebrae_full.pdf tenebrae_full-temp.pdf
pdfcrop tenebrae_friday.pdf tenebrae_friday-temp.pdf
pdfcrop tenebrae_prophecyTone.pdf tenebrae_prophecyTone-temp.pdf
pdfcrop tenebrae_saturday.pdf tenebrae_saturday-temp.pdf
pdfcrop tenebrae_thursday.pdf tenebrae_thursday-temp.pdf

gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_friday-crop.pdf tenebrae_friday-temp.pdf &
gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_full-crop.pdf tenebrae_full-temp.pdf &
gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_prophecyTone-crop.pdf tenebrae_prophecyTone-temp.pdf &
gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_saturday-crop.pdf tenebrae_saturday-temp.pdf &
gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_thursday-crop.pdf tenebrae_thursday-temp.pdf &
