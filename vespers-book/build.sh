function usage
{
	echo "usage: build.sh [-f] [-l] [-t] [-g] [-letter|-birmingham]"
	echo "       -f force all"
	echo "       -l force lilypond"
	echo "       -t force tex"
	echo "       -g force ghostscript"
	echo "       --birmingham build birmingham edition"
	echo "       --letter build letter size"
}

force=
latexmkopts=
lyopts=
filename=vespers-book
suffix=-main
suffix2=

while [ "$1" != "" ]; do
	case $1 in
		--letter )              suffix2=-letter
								;;
		--birmingham )			suffix2=-birmingham
								;;
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

cp -fu $filename$suffix$suffix2.pdf $filename$suffix$suffix2-old.pdf

latexmk $filename$suffix$suffix2.tex $latexmkopts
if [ "$?" -eq "0" ] || [ "$force" = "1" ] || [ "$suffix2" != ""]; then
	if test `find "$filename$suffix$suffix2.pdf" -mmin -1` || ! [ -f $filename$suffix2.pdf ] || [ "$force" = "1" ]; then
		cp -fu $filename$suffix2.pdf $filename$suffix2-old.pdf
		gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=$filename$suffix2.pdf $filename$suffix$suffix2.pdf &
	fi
fi

# | tail -n 1

wait
