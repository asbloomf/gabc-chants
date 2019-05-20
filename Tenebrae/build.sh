
error_exit()
{
	echo "$1" 1>&2
	exit 1
}

if latexmk tenebrae_full.tex && mv tenebrae_full.pdf tenebrae_original.pdf; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_full.pdf tenebrae_original.pdf &
else
	echo Failed somewhere!
	read -p "Press a key to continue..." -n1 -s
fi

if latexmk tenebrae_thursday.tex && mv tenebrae_thursday.pdf tenebrae_thursday_original.pdf; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_thursday.pdf tenebrae_thursday_original.pdf &
fi

if latexmk tenebrae_friday.tex && mv tenebrae_friday.pdf tenebrae_friday_original.pdf; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_friday.pdf tenebrae_friday_original.pdf &
fi

if latexmk tenebrae_saturday.tex mv tenebrae_saturday.pdf tenebrae_saturday_original.pdf; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_saturday.pdf tenebrae_saturday_original.pdf &
fi

latexmk tenebrae_prophecyTone.tex
exit 0

mv tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf
if [ "$?" = "0"]; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf &
fi
