function usage
{
	echo "usage: build.sh [-f] [-l] [-t] [-g] [-letter|-birmingham]"
	echo "       -f force all"
	echo "       -l force lilypond"
	echo "       -t force tex"
	echo "       -g force ghostscript"
	echo "       --birmingham build birmingham edition"
	echo "       --letter build letter size"
	echo "       --stlouis build St Louis edition"
	echo "       --common build only Sunday common edition"
	echo "       --all build all editions"
}

force=
latexmkopts=
lyopts=
filename=vespers-book
suffix=-main
suffix2=("")

while [ "$1" != "" ]; do
	case $1 in
		--letter )              suffix2=("-letter")
								;;
		--birmingham )			suffix2=("-birmingham")
								;;
		--stlouis )				suffix2=("-stlouis")
								;;
		--common )				suffix2=("-only-sunday-common")
								;;
		--all )					suffix2=("-only-sunday-common" "-stlouis" "-letter" "")
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

for suf2 in "${suffix2[@]}"
do
	cp -fu ${filename}${suffix}${suf2}.pdf ${filename}${suf2}-old.pdf

	latexmk ${filename}${suffix}${suf2}.tex $latexmkopts
	pdfcrop ${filename}${suffix}${suf2}.pdf ${filename}${suf2}-crop.pdf
	cp -f ${filename}${suffix}${suf2}.pdf ${filename}${suf2}.pdf
done
# if [ "$?" -eq "0" ] || [ "$force" = "1" ] || [ "$suffix2" != ""]; then
# 	if test `find "$filename$suffix$suffix2.pdf" -mmin -1` || ! [ -f $filename$suffix2.pdf ] || [ "$force" = "1" ]; then
# 		cp -fu $filename$suffix2.pdf $filename$suffix2-old.pdf
# 		gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=$filename$suffix2.pdf $filename$suffix$suffix2.pdf &
# 	fi
# fi

# | tail -n 1

wait
