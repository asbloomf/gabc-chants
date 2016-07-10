function usage
{
	echo "usage: build.sh [-f] [-l] [-t] [-g]"
	echo "       -f force all"
	echo "       -l force lilypond"
	echo "       -t force tex"
	echo "       -g force ghostscript"
}

force=
latexmkopts=
lyopts=

while [ "$1" != "" ]; do
	case $1 in
		-f | --force )			force=1
								latexmkopts=-g
								lyopts=-f
								;;
		-l | --force-lilypond )	lyopts=-f
								;;
		-t | --force-tex )		latexmkopts=-g
								;;
		-g | --force-gs )		force=1
								;;
		* )						usage
								exit 1
	esac
	shift
done

./ly-build.sh $lyopts

latexmk vespers-book-main.tex $latexmkopts
if [ "$?" -eq "0" ] || [ "$force" = "1" ]; then
	if test `find "vespers-book-main.pdf" -mmin -1` || ! [ -f vespers-book.pdf ] || [ "$force" = "1" ]; then
		gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=vespers-book.pdf vespers-book-main.pdf &
	fi
fi

# | tail -n 1

wait
