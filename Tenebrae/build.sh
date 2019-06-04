
error_exit()
{
	echo "$1" 1>&2
	exit 1
}

error_message=""

process_file()
{
	filename=$1
	ofilename=$2

	#echo $ofilename $filename
	if latexmk $filename.tex && [ $(stat -c%s $filename.pdf) -gt $maxsize ] && mv $filename.pdf $ofilename.pdf; then
		gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=$filename.pdf $ofilename.pdf &
	else
		error_message="${error_message}${filename} was not processed.\n"
		#echo $error_message
		#printf $error_message
		#read -p "Press a key to continue..." -n1 -s
	fi
}

maxsize=1500000 # 1.5MB

# tenebrae_full.pdf should be newer than _original

process_file tenebrae_full tenebrae_original
process_file tenebrae_thursday tenebrae_thursday_original
process_file tenebrae_friday tenebrae_friday_original
process_file tenebrae_saturday tenebrae_saturday_original

latexmk tenebrae_prophecyTone.tex

printf "$error_message"
exit 0

mv tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf
if [ "$?" = "0"]; then
	gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=tenebrae_prophecyTone.pdf tenebrae_prophecyTone_original.pdf &
fi
