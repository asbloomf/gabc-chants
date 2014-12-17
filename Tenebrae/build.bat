lualatex tenebrae_full.tex
if errorlevel 0 (
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_smallerFile.pdf tenebrae_full.pdf
)

lualatex tenebrae_thursday.tex
if errorlevel 0 (
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_thursday_smallerFile.pdf tenebrae_thursday.pdf
)

lualatex tenebrae_friday.tex
if errorlevel 0 (
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_friday_smallerFile.pdf tenebrae_friday.pdf
)

lualatex tenebrae_saturday.tex
if errorlevel 0 (
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_saturday_smallerFile.pdf tenebrae_saturday.pdf
)

lualatex tenebrae_prophecyTone.tex
if errorlevel 0 (
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_prophecyTone_smallerFile.pdf tenebrae_prophecyTone.pdf
)
