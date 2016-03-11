./ly-build.sh

latexmk vespers-book-main.tex
if [ "$?" -eq "0" ]; then
	if test `find "vespers-book-main.pdf" -mmin -1`
	then
		gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=vespers-book.pdf vespers-book-main.pdf &
	fi
fi

# | tail -n 1

wait
