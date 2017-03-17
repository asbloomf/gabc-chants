latexmk tenebrae_full.tex
if errorlevel 0 (
	move tenebrae_full.pdf tenebrae_original.pdf
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_full.pdf tenebrae_original.pdf
)

latexmk tenebrae_thursday.tex
if errorlevel 0 (
	move tenebrae_thursday.pdf tenebrae_thursday_original.pdf
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_thursday.pdf tenebrae_thursday_original.pdf
)

latexmk tenebrae_friday.tex
if errorlevel 0 (
	move tenebrae_friday.pdf tenebrae_friday_original.pdf
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_friday.pdf tenebrae_friday_original.pdf
)

latexmk tenebrae_saturday.tex
if errorlevel 0 (
	move tenebrae_saturday.pdf tenebrae_saturday_original.pdf
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_saturday.pdf tenebrae_saturday_original.pdf
)

latexmk tenebrae_prophecyTone.tex
goto end

if errorlevel 0 (
	move tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf
)

:end
